class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.date :dob
      t.string :ailment
      t.string :gender
      t.timestamps
      t.string :workflow_state
    end
  end
end
