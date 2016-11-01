class AddUidAndProviderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string, null: false, default: "developer"
    add_column :users, :uid, :string, null: false, default: "unknown@example.com"

    add_index :users, [:provider, :uid], unique: true
  end
end
