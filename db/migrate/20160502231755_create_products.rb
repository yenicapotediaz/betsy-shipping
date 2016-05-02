class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string :name
    	t.float :price
    	t.integer :quantity
    	t.integer :rating
    	t.string :description
    	t.string :category
    	t.string :photo_url
    	t.string :status
    	t.integer :user_id
      t.timestamps null: false
    end
  end
end
