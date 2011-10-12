require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "post should not save without title and content" do
  	post = Post.new
    assert !post.save
  end

  test "post should save with valid data" do
  	post = posts(:one)
  	assert post.save
  end
end
