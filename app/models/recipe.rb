class Recipe < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates_presence_of :name
  validate :user_id
  validate :image_size
  
#friendly_id
  extend FriendlyId
  friendly_id :name, use: :slugged


  private
  def image_size
    if image.size > 2.megabytes
      errors.add(:image, " File should be less than 2MB")
    end
  end
end
