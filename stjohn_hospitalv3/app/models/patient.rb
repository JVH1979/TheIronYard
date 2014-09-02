class Patient < ActiveRecord::Base
  belongs_to :hospital
  has_many :medications
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :hospital_patient_medication
  has_many :medications, through: :hospital_patient_medication
end
