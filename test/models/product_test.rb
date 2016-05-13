require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product belongs to a user" do
    assert_equal products(:dog_pirate).user, users(:dog_merchant)
  end

  test "product can have a review" do
  	assert_includes products(:dog_pirate).reviews, reviews(:dog_pirate_review1)
  end

  test "product can have many reviews" do
  	assert_includes products(:dog_pirate).reviews, reviews(:dog_pirate_review1)
  	assert_includes products(:dog_pirate).reviews, reviews(:dog_pirate_review2)
  end

  test "product name must be unique" do
  	product1 = Product.new(name: "Sheep Guinea", price: 5)
    product1.save
  	product2 = Product.new(name: "Sheep Guinea", price: 5)
  	assert !product2.save, "Name not unique"
  	product1.destroy
  	product2.destroy
  end

  test 'product rating will update as new ratingss are made with reviews' do
    dog = products(:dog_pirate)
    dog.update_rating
    assert_equal 4, dog.rating
  end

  test "product must be instantiated with a price" do
    product1 = Product.new(name: "Kitty Cat")
    assert !product1.save, "No price given"
  end

  test "product must be instantiated with a name" do
    product1 = Product.new(price: 8)
    assert !product1.save, "No name given"
  end
end
