module ProductsHelper

  def weight_display(weight)
    "#{number_with_precision weight, precision: 1} lbs"
  end
end
