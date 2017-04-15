class Recipe < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates_presence_of :name
   validate :user_id

  validate :image_size


  private
  def image_size
    if image.size > 2.megabytes
      errors.add(:image, " File should be less than 2MB")
    end
  end
end
