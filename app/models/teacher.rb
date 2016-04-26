class Teacher < ActiveRecord::Base
  # Validations
  validates :name, :salary, :ssn, :phone_number, presence: true
end
