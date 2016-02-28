 class MileageValidator < ActiveModel::Validator
	def validate(record)
		unless (record.start_mileage <= record.end_mileage) 
			record.errors[:end_mileage] << 'Your ending mileage must be greater than your starting mileage!'
		end
	end
end
