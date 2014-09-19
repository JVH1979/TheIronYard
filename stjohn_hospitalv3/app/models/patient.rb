class Patient < ActiveRecord::Base
  belongs_to :hospital
  has_many :medications, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true

include Workflow
  workflow do
    state :Waiting do
      event :examine, transitions_to: :Check_Up
      event :scanning, transitions_to: :X_ray
      event :operate, transitions_to: :Surgery
      event :check_out, transitions_to: :Discharge
    end

    state :Check_Up do
      event :stasis, transitions_to: :Waiting
      event :scanning, transitions_to: :X_ray
      event :operate, transitions_to: :Surgery
      event :billing, transitions_to: :Pay_Bill
    end

    
  end
end
