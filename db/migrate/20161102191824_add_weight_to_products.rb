class AddWeightToProducts < ActiveRecord::Migration
  def change
    add_column :products, :weight, :float, null: false, default: 0.0
  end
end
