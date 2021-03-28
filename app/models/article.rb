class Article < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 5, maximum: 50} #Checks if Title is not nil
  validates :description, presence: true, length: {minimum: 10}
  validates :postdescription, presence: true, length: {maximum: 400}

  mount_uploader :image, ImageUploader
end
