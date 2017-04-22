class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  validates_presence_of :content
  validates_presence_of :user_id
end
