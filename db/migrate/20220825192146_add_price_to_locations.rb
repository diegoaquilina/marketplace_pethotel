class AddPriceToLocations < ActiveRecord::Migration[7.0]
  def change
    add_column :locations, :price, :integer, default: 0
  end
end
