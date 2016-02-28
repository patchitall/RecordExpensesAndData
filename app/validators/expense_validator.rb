class ExpenseValidator < ActiveModel::Validator
	def validate(record)
		trip = Trip.find_by(record.trip_id)
		unless (record.expense_date <= trip.start_date) && (record.expense_date >= trip.start_date)
			record.errors[:expense_date] << 'Your date for this expense must be during the trip!'
		end
	end
end