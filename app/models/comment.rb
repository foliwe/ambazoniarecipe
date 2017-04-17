class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  validates_presence_of :content
  validates_presence_of :user_id
end
