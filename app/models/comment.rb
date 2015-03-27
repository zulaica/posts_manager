class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :author, :presence => true
  validates :text, :presence => true
end
