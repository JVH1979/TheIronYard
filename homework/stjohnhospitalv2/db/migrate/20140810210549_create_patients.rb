class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstName
      t.string :lastName
      t.date :dob 
      t.string :ailment
      t.string :gender	
      t.string :workflow_state
      t.timestamps
    end
  end
end
