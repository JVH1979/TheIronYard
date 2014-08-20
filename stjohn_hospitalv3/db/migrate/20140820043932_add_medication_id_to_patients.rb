class AddMedicationIdToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :medication_id, :integer
  end
end
