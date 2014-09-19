class AddWorkflowToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :Waiting, :string
    add_column :patients, :Check_Up, :string
    add_column :patients, :X_ray, :string
    add_column :patients, :Surgery, :string
    add_column :patients, :Pay_Bill, :string
    add_column :patients, :Discharge, :string
  end
end
