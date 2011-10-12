require 'test_helper'

class RiderTest < ActiveSupport::TestCase
  test "can not save rider without name" do
    rider = Rider.new
    assert !rider.save
  end
  test "rider should save with valid data" do
  	rider = riders(:one)
  	assert rider.save
  end
end
