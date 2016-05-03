class User < ActiveRecord::Base
  has_secure_password

  has_many :orders
  has_many :products


  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {with: /@/}

end
