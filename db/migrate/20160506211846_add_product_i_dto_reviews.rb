class AddProductIDtoReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :product_id, :string
  end
end
