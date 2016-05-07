class AddColumnsToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :email, :string
    add_column :orders, :street_address, :string
    add_column :orders, :city, :string
    add_column :orders, :state, :string
    add_column :orders, :name_on_credit_card, :string
    add_column :orders, :credit_card_number, :integer
    add_column :orders, :credit_card_exp_date, :string
    add_column :orders, :credit_card_cvv, :integer
    add_column :orders, :billing_zip, :string
  end
end
