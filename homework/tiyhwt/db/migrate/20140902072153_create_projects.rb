class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.date :project_due_date
      t.string :instructions

      t.timestamps
    end
  end
end
