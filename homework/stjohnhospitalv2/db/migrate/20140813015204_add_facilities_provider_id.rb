class AddFacilitiesProviderId < ActiveRecord::Migration
  def change
    add_column :doctor, :doctorable_id, :integer
  end
end
