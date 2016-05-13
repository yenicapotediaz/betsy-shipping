class User < ActiveRecord::Base
  has_secure_password

  has_many :orders
  has_many :products
  has_many :reviews
  has_many :orderitems

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {with: /@/}

  def self.log_in(username, password)
    somebody = self.find_by(username: username)
    somebody && somebody.authenticate(password)
  end

  def revenue
    Orderitem.where(user: self.id).sum(:price)
  end

  def revenue_by_status(status)
    Orderitem.joins(:order).where("orderitems.user_id = ? and orders.status = ?", u.id, status).sum(:price)
  end

end
