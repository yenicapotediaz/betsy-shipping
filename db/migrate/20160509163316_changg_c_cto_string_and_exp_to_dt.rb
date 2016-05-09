class ChanggCCtoStringAndExpToDt < ActiveRecord::Migration
  def change
  	change_column :users, :cc_number, :string
  	change_column :users, :exp_date, :string
  end
end
