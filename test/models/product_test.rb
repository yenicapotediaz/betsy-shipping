require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "user can have many products" do
    assert_includes users(:dog_merchant).products, products(:dog_pirate)
  end

  test "display name for Dog Pirate should be Dog Pirate" do
  	assert_equal "Dog Pirate", products(:dog_pirate).name
  end

  test "display name for Sushi Cat must be unique" do
  	assert_equal "Sushi Cat", products(:sushi_cat).name
  end

  test "Price for Sushi Cat should be 200" do
  	assert_equal 200, products(:sushi_cat).price
  end

end
