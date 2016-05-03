class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string  :status
      t.float   :price
      t.user_id :integer

      t.timestamps null: false
    end
  end
end
