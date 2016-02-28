class TimeValidator < ActiveModel::Validator
	def validate(record)
		unless (record.start_time <= record.end_time) || record.next_day?
			record.errors[:end_time] << 'Your ending time must be after your starting time! (If you are ending on the next day, click "next day").'
		end
	end
end
