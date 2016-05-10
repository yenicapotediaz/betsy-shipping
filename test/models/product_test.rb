require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "user can have many products" do
    assert_includes users(:dog_merchant).products, products(:sushi_cat)
  end
end
