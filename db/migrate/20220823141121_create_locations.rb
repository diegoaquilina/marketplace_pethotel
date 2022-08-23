class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.boolean :available
      t.string :address
      t.string :home_type
      t.integer :total_occupancy
      t.string :summary
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
