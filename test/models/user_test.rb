require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "validations: username can't be blank" do
    user = User.new

    assert_not user.valid?
    assert user.errors.keys.include?(:username), "username is not in the errors hash"
  end

  test "validations: email can't be blank" do
    user = User.new

    assert_not user.valid?
    assert user.errors.keys.include?(:email), "email is not in the errors hash"
  end

  test "can authenticate known users" do
    doggy = users(:dog_merchant)
    assert_equal doggy, User.log_in(doggy.username, "password")
  end

  test "won't authenticate mismatched data" do
    assert_not User.log_in("my_username", "notpassword")
  end

  test "won't authenticate a known user with a bad password" do
    kitty = users(:cat_merchant)
    assert_not User.log_in(kitty.username, "guineapig")
 end

  test "Username for dog merchant should be dogs_yes" do
    assert_equal "dogs_yes", users(:dog_merchant).username
  end

  test "User dog_merchant has the product dog_pirate" do
    assert_includes users(:dog_merchant).products, products(:dog_pirate)
  end

  test "User cat_merchant has an order" do
    assert_includes users(:cat_merchant).orders, orders(:second_order)
  end

  test "total revenue for an order should calculate" do 
    user = users(:dog_merchant)
    assert_equal 824, user.revenue
  end

  test "total revenue for completed orders should caluclate" do 
    user = users(:dog_merchant)
    assert_equal 824, user.revenue_by_status("Completed")
  end

  test "total revenue for pending orders should caluclate" do 
    user = users(:dog_merchant)
    assert_equal 0, user.revenue_by_status("Pending")
  end

  test "order by user should return one completed order" do 
    user = users(:dog_merchant)
    assert_equal 1, user.order_by_status("Completed")
  end
end
