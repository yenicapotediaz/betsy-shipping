require 'test_helper'

class OrderTest < ActiveSupport::TestCase

  test "order can have many order items" do
    assert_includes orders(:first_order).orderitems, orderitems(:first_orderitem)
  	assert_includes orders(:first_order).orderitems, orderitems(:second_orderitem)
  end

  test "order belongs to user" do
    assert_includes users(:dog_merchant).orders, orders(:first_order)
  end

end
