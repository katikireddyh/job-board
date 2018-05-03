class AddRegionToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :region, :string,  default: ""
  end
end
