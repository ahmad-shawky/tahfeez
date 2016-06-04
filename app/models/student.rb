class Student < ActiveRecord::Base

  # Validations
  validates :name, presence: true
  validates :age, presence: true
  validates :address, presence: true

  # Uploaders
  mount_uploader :image, ImageUploader

  # Associations
  has_many :student_surahs
  has_many :surahs, through: :student_surahs
  accepts_nested_attributes_for :student_surahs, reject_if: :blank
  accepts_nested_attributes_for :surahs
end
