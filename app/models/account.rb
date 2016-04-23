class Account < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Validations
  validates :name, presence: true

  # Override devise password required
  def password_required?
   !persisted? || !password.blank? || !password_confirmation.blank?
  end
end
