class ChangeDataTypeForCcExpDate < ActiveRecord::Migration
  def change
    remove_column :orders, :credit_card_exp_date
    add_column :orders, :credit_card_exp_date, :date
  end
end
