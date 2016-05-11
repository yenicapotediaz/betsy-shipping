require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should assign categories" do
    get :index
    assert_not_nil assigns(:categories)
  end

  test "should assign animals" do
  	get :index
  	assert_not_nil assigns(:animals)
  end

end
