class AddDoctorableTypeToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :doctorable_type, :string
  end
end
