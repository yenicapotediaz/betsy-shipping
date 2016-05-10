class MakeRetiredFalseAsDefault < ActiveRecord::Migration
  def change
  	change_column :products, :retired, :boolean, default: false
  end
end
