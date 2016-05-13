class Product < ActiveRecord::Base
	belongs_to :user
	has_many :reviews
	validates :name, presence: true, uniqueness: true
	validates	:price, presence: true, numericality: {greater_than: 0}

	def update_rating
		ratings = self.reviews.collect { |a| a.rating.to_f }
		overall = ratings.reduce(:+)/ratings.length
		self.update(rating: overall)
	end

end
