class Product < ActiveRecord::Base
	belongs_to :user
	validates :name, presence: true, uniqueness: true
	validates	:price, presence: true, numericality: true, :greater_than_or_equal_to => 0
end
