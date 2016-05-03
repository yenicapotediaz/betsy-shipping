class Product < ActiveRecord::Base
	belongs_to :user
	has_many :reviews
	validates :name, presence: true, uniqueness: true
	validates	:price, presence: true, numericality: {greater_than: 0}
end
