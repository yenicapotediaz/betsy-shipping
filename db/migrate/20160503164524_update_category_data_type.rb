class UpdateCategoryDataType < ActiveRecord::Migration
  def change
    change_column :products, :category, :text, array:true, default:[]
    add_column :products, :animal, :string
  end
end
