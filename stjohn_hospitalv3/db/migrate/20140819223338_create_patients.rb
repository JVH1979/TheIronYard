class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob 
      t.string :ailment
      t.string :gender  
      t.timestamps
    end
  end
end
