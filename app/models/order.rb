class Order < ActiveRecord::Base
  has_many :orderitems
  belongs_to :user

  # validates :credit_card_number, length: { is: 16}
  # validates :credit_card_cvv, length: { is: 3 }
  # validates :billing_zip, length: { is: 5 }


end
