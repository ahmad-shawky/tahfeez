class Surah < ActiveRecord::Base

  # Associations
  has_many :student_surahs
  has_many :students, through: :student_surahs
end
