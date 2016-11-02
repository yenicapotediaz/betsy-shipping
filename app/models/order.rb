class Order < ActiveRecord::Base
  has_many :orderitems
  belongs_to :user

  # Update the order details with the provided attributes
  # then reduce the stock of any products in the order.
  #
  # This is done in a transaction so that we can rollback
  # if any product's stock cannot be reduced.
  # Returns true if everything completed successfully, false otherwise.
  def checkout(attributes)
    completed = false
    transaction do
      update!(attributes.merge(status: "Completed"))
      orderitems.each do |item|
        raise ActiveRecord::Rollback unless item.reduce_stock
      end
      completed = true
    end

    completed
  end
end
