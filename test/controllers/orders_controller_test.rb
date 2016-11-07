require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:completed)
    session[:order_id] = @order.id
  end

  class ShippingSelectTest < OrdersControllerTest
    setup do
      def send_request(params={})
        get :shipping_select, {
          id: @order.id
        }.merge(params)
      end
    end

    test "should respond success" do
      send_request

      assert_response :success
    end

    test "should render appropriate view template" do
      send_request

      assert_template :shipping_select
    end

    test "should ignore id parameter" do
      send_request id: 35275

      assert_equal @order, assigns(:order)
    end

    test "should set shipping method options" do
      send_request

      assert_not_nil assigns(:shipping_methods)
      assert_kind_of Array, assigns(:shipping_methods)
      assert assigns(:shipping_methods).all? do |method|
        method.kind_of? ShippingMethod
      end
    end
  end
end
