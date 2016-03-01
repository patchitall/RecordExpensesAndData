module ReportsHelper
	def leg_report
		@legs = Leg.all 
		@leg_report = []
		@legs.each do |l|
			if (l.date >= @report.report_start) && (l.date <= @report.report_end)
			@leg_report.push(l)
			@leg_report
			end
		end	
	end

	#run only AFTER leg_report
	def report_mileage
		@report_total_mileage =  0
		@report_time = 0
		@leg_report.each do |m|
			@report_total_mileage += m.mileage_total
		end
		@leg_report.each do |t|
			@report_time += t.leg_travel_time
		end
	end

	def expense_report
		@expenses = Expense.all 
		@expense_report = []
		@expenses.each do |e|
			if (e.expense_date >= @report.report_start) && (e.expense_date <= @report.report_end)
				@expense_report.push(e)
				@expense_report
			end
		end
	end

	#run only AFTER expense_report
	def report_expenses
		@total_expenses = 0
		@expense_report.each do |x|
			@total_expenses += x.expense_amount
		end
	end
end
