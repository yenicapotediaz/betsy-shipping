require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  def setup
    @product = products(:dog_pirate)
  end

  test "product should have a name" do
    get :index, animal = @product.name
  assert_response :success
  end

end
