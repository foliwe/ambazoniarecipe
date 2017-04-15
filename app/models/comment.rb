class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  validates :content, length: { maximum: 1000 }
end
