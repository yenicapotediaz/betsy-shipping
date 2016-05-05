class Orderitem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  validates :quantity, presence: true, numericality: {only_integer: true, greater_than: 0}

  def total_price
    self.product.price * self.quantity
  end

  def self.revenue(id)
    total = 0
    all.each do |item|
      if item.seller_id == id
        order_amount = item.product.price * item.quantity
        total += order_amount
      end
    end
    total
  end

end
