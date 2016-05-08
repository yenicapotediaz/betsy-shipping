require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "validations: username can't be blank" do
    user = User.new

    assert_not user.valid?
    assert user.errors.keys.include?(:username), "username is not in the errors hash"
  end


  test "validations: email can't be blank" do
    user = User.new

    assert_not user.valid?
    assert user.errors.keys.include?(:email), "email is not in the errors hash"
  end

end
