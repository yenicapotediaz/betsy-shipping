class Orderitem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  belongs_to :user
  validates :quantity, presence: true, numericality: {only_integer: true, greater_than: 0}

  def total_price
    self.product.price * self.quantity
  end

  def total_weight
    self.product.weight * self.quantity
  end

  # Reduce the stock of this product by the quantity.
  # Returns true if there was sufficient stock, false otherwise.
  def reduce_stock
    completed = false
    transaction do
      original_stock = product.reload.quantity # Reload to ensure latest version
      new_stock = original_stock - quantity
      raise ActiveRecord::Rollback unless new_stock >= 0

      product.update!(quantity: new_stock)
      completed = true
    end

    completed
  end
end
