class Student < ActiveRecord::Base

  # Validations
  validates :name, presence: true
  validates :age, presence: true
  
  # Uploaders
  mount_uploader :image, ImageUploader
end
