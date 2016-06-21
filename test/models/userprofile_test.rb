require 'test_helper'

class UserprofileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@userprofile = Userprofile.new(name: "Example Name", description: "user description", followers: "number of followers", following: "number following", profilepic: "example_url")
  end

  test "name length within reason" do
  	@userprofile.name='a'*51
  	assert_not @userprofile.valid?
  end

end
