class UpdateCategoryDataType < ActiveRecord::Migration
  def change
    change_column :products, :category, :array
    add_column :products, :animal, :string
  end
end
