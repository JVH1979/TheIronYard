class Patient < ActiveRecord::Base

include Workflow
  workflow do
    state :admittance do 
      event :waiting, transitions_to: :waiting_room
      event :analyzing, transitions_to: :check_up
      event :scanning, transitions_to: :xray
      event :operate, transitions_to: :surgery
      event :pay_bill, transitions_to: :paid
      event :discharge, transitions_to: :gone
    end
    state :waiting_room do
      event :waiting, transitions_to: :waiting_room
      event :analyzing, transitions_to: :check_up
      event :scanning, transitions_to: :xray
      event :operate, transitions_to: :surgery
      event :discharge, transitions_to: :gone
    end
    state :check_up do
      event :waiting, transitions_to: :waiting_room
      event :scanning, transitions_to: :xray
      event :operating, transitions_to: :surgery
      event :pay_bill, transitions_to: :paid
    end
    state :xray do
      event :waiting, transitions_to: :waiting_room
      event :analyzing, transitions_to: :check_up
      event :operate, transitions_to: :surgery
      event :pay_bill, transitions_to: :paid
    end
    state :surgery do
      event :waiting, transitions_to: :waiting_room
      event :analyzing, transitions_to: :check_up
      event :scanning, transitions_to: :xray
      event :pay_bill, transitions_to: :paid
    end
    state :pay_bill do 
      event :waiting, transitions_to: :waiting_room
      event :analyzing, transitions_to: :check_up
      event :scanning, transitions_to: :xray
      event :operate, transitions_to: :surgery
      event :discharge, transitions_to: :gone
    end
    state :discharge
end



validates :dob,
          date: { after: Proc.new { Time.now },
                  before: Proc.new { Time.now + 1.year } }
end
              