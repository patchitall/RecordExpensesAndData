class Leg < ActiveRecord::Base
	belongs_to :trip

	def mileage_total
		if non_work_miles.nil? 
			@leg.non_work_miles = 0
		end
		end_mileage - start_mileage - non_work_miles

	end

	def leg_travel_time
		if non_travel_time_in_minutes.nil?
			@leg.non_travel_time_in_minutes = 0
		end
		end_time - start_time - (non_travel_time_in_minutes * 60)
	end

	def travel_time_hours
		((leg_travel_time)/3600).to_i 
	end

	def travel_time_minutes
		(((leg_travel_time)%3600)/60).to_i 
	end
end