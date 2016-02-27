module ReportsHelper
	def leg_report
		@legs = Leg.all 
		@leg_report = []
		@legs.each do |l|
			if (l.date <= @report.report_start) || (l.date >= @report.report_end)
			@leg_report.push(l)
			@leg_report
			end
		end	
	end

	#run only AFTER leg_report
	def report_mileage
		@report_total_mileage =  0
		@leg_report.each do |m|
			@report_total_mileage += m.mileage_total
		end
	end
end
