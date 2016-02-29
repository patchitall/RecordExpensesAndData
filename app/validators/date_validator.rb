class DateValidator < ActiveModel::Validator
	def validate(record)
		trip = Trip.find_by(record.trip_id)
			unless ((record.date >= record.trip.start_date) && (record.date <= record.trip.end_date)) 
				record.errors[:date] << 'Your date for this leg must be during the trip!'
			end
	end
end

