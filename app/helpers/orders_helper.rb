module OrdersHelper
  def shipping_method_display(method)
    "#{method.name} - #{number_to_currency(method.cost)}"
  end
end
