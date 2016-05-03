class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string  :status
      t.float   :price
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
