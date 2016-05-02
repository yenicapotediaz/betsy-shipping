class CreateOrderitems < ActiveRecord::Migration
  def change
    create_table :orderitems do |t|
      t.quantity :integer
      t.subtotal :float
      t.integer :order_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
