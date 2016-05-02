class User < ActiveRecord::Base
  has_many :orders
  has_many :products
# validation for users is unclear as guests should not be required to provide any info unless they actually buy something
  # validates :username, presence: true
end
