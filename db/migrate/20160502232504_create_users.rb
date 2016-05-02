class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :full_name
      t.integer :cc_number
      t.date :exp_date
      t.integer :cvv
      t.integer :zip

      t.timestamps null: false
    end
  end
end
