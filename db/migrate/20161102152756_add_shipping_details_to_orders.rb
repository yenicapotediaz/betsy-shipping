class AddShippingDetailsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :shipping_name, :string, null: true
    add_column :orders, :shipping_cost, :float, null: true
  end
end
