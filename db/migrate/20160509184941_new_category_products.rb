class NewCategoryProducts < ActiveRecord::Migration
  def change
  	add_column :products, :new_category, :string
  end
end
