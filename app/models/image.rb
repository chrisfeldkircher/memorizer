class Image < ApplicationRecord
  validates :title, presence: true, length: {minimum: 3, maximum: 50 } #Checks if Title is not nil
  validates :description, presence: true, length: {minimum: 5}
  validates :image, presence: true

   mount_uploader :image, ImageUploader
end
