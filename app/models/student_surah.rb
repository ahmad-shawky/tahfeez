class StudentSurah < ActiveRecord::Base
  belongs_to :student
  belongs_to :surah
end
