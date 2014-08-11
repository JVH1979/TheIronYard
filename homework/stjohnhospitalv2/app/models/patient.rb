class Patient < ActiveRecord::Base

	include Workflow
	workflow do 

		state :waiting do
			event :checkup, transitions_to: :checkup_complete
			event :x_ray_now, transitions_to: :xray_complete
			event :surgery_now, transitions_to: :surgery_complete
			event :discharge, transitions_to: :discharged
		end

		state :checkup_complete do
			event :waitroom, transitions_to: :waiting
			event :x_ray_now, transitions_to: :xray_complete
			event :surgery_now, transitions_to: :surgery_complete
			event :pay, transitions_to: :paid
		end

		state :xray_complete do
			event :waitroom, transitions_to: :waiting
			event :checkup, transitions_to: :checkup_complete
			event :surgery_now, transitions_to: :surgery_complete
			event :pay, transitions_to: :paid
		end

		state :surgery_complete do
			event :waitroom, transitions_to: :waiting
			event :checkup, transitions_to: :checkup_complete
			event :x_ray_now, transitions_to: :xray_complete
			event :pay, transitions_to: :paid
		end

		state :paid do
				event :discharge, transitions_to: :discharged
		end

	end

end

