class User < ActiveRecord::Base
  has_many :orders
  has_many :products

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {with: /@/}
  


# validation for users is unclear as guests should not be required to provide any info unless they actually buy something
  # validates :username, presence: true
end
