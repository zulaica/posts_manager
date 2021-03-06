class User < ActiveRecord::Base
  attr_accessor :password
  validates_confirmation_of :password
  before_save :encrypt_password

  validates :username, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :phone, :uniqueness => true

  has_many :posts
  has_many :comments

  # has_attached_file :avatar, :styles => { :medium => '300x300>', :thumb => '100x100>' }
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end

  def self.authenticate(email, password)
    user = User.where(email: email).first
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
end
