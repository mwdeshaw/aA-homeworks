class AddHouseIdToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :house_id, :integer
  end
end
