class Leg < ActiveRecord::Base
	belongs_to :trip 

	validates :trip_id, presence: true
	validates_with MileageValidator
	validates :destination, presence: true
	validates_with TimeValidator
	validates_with DateValidator
 

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
		unless next_day 
			end_time - start_time - (non_travel_time_in_minutes * 60) - (time_zone * 3600)
		else
			day_end = Time.new.end_of_day
			day_start = Time.new.beginning_of_day
			(day_end - start_time) + (end_time - day_start) - (non_travel_time_in_minutes * 60) - (time_zone * 3600)
		end
	end

	def travel_time_hours
		((leg_travel_time)/3600).to_i 
	end

	def travel_time_minutes
		(((leg_travel_time)%3600)/60).to_i 
	end

	def leg_show
		self.destination + " " + self.start_time.strftime("%b %d").to_s
	end

end
