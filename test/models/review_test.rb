require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  test "validations: rating can't be blank" do
    review = Review.new

    assert_not review.valid?
    assert review.errors.keys.include?(:rating), "rating is not in the errors hash"
  end

  test "rating must be an integer" do
    review = Review.new(rating: 3.4)
    assert_not review.valid?
    assert review.errors.keys.include?(:rating), "rating is not in the errors hash"
  end

  test "rating is valid if it is an integer" do
    review = Review.new(rating: 3)
    assert review.valid?
  end

  test "rating must be between 1 and 5" do
    review = Review.new(rating: 7)
    assert_not review.valid?
    assert review.errors.keys.include?(:rating), "rating is not in the errors hash"
  end



end
