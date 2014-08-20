class DoctorIdForPatientsAndHospitals < ActiveRecord::Migration
  def change
    add_column :patients, :doctor_id, :integer
    add_column :hospitals, :doctor_id, :integer
  end
end
