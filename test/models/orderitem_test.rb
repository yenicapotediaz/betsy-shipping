require 'test_helper'

class OrderitemTest < ActiveSupport::TestCase
  test "orderitem belongs to a product" do 
  	assert_equal orderitems(:first_orderitem).product, products(:dog_pirate)
  end

  test "orderitem belongs to an order" do 
  	assert_equal orderitems(:first_orderitem).order, orders(:first_order)
  end

  test "orderitem can calculate total price based on quantity selected" do
  	assert_equal 800, orderitems(:second_orderitem).total_price
  end

  # test "total revenue can be calculated from order items related to seller" do
  # end
end
