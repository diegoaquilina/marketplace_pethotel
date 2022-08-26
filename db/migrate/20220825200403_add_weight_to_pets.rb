class AddWeightToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :weight, :integer
  end
end
