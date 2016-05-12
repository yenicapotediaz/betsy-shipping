class ChangeOrderItemSellerId < ActiveRecord::Migration
  def change
    rename_column :orderitems, :seller_id, :user_id
  end
end
