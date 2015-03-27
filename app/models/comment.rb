class Comment < ActiveRecord::Base
  belongs_to :post
  validates :author, :presence => true
  validates :text, :presence => true
  validates :user_id, :presence => true
end
