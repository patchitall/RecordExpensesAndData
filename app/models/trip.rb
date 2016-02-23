class Trip < ActiveRecord::Base
	belongs_to :user
	has_many :expenses
	has_many :legs


	def trip_miles

		@trip_mileage = 0
		self.legs.each do |leg|
			@trip_mileage += leg.mileage_total			
		end
		@trip_mileage
	end

	def trip_expense_total
		@expense_total = 0
		self.expenses.each do |expense|
			@expense_total += expense.expense_amount
		end
		@expense_total
	end

	

end
