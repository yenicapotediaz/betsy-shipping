class CorrectOrderUserIdField < ActiveRecord::Migration
  def change
    rename_column :orders, :order_id , :user_id
  end
end
