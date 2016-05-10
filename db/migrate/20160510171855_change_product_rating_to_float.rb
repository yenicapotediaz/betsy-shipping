class ChangeProductRatingToFloat < ActiveRecord::Migration
  def change
    change_column :products, :rating, :float
  end
end
