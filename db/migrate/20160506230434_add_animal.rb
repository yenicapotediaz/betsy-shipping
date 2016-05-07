class AddAnimal < ActiveRecord::Migration
  def change
  	add_column :products, :animal, :string
  end
end
