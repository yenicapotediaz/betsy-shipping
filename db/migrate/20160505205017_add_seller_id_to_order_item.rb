class AddSellerIdToOrderItem < ActiveRecord::Migration
  def change
    add_column :orderitems, :seller_id, :integer
  end
end
