class CreateOrderitems < ActiveRecord::Migration
  def change
    create_table :orderitems do |t|
      t.integer :quantity
      t.float :price
      t.integer  :order_id
      t.integer  :product_id

      t.timestamps null: false
    end
  end
end
