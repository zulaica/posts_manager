class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  validates :title, :presence => true
  validates :entry, :presence => true

  default_scope { order('published DESC') }
end
