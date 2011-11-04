module RidersHelper
	def rider_name(rider)
		rider.first_name + ' ' + rider.name
	end
end
