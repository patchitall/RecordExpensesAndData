class TripValidator < ActiveModel::Validator
	def validate(record)
		unless (record.start_date <= record.end_date) 
			record.errors[:end_date] << 'Your ending date must be on or after your starting date!'
		end
	end
end
