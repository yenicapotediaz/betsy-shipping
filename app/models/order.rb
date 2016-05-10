class Order < ActiveRecord::Base
  has_many :orderitems
  belongs_to :user

  # validates :email, presence: true
  # validates :street_address, presence: true
  # validates :city, presence: true
  # validates :state, presence: true
  # validates :name_on_credit_card, presence: true
  # validates :credit_card_number, presence: true, numericality: {only_integer: true }
  # validates :credit_card_cvv, presence: true, numericality: {only_integer: true }
  # validates :billing_zip, presence: true, numericality: {only_integer: true }
  # validates :credit_card_exp_date, presence: true

end
