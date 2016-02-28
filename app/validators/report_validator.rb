class ReportValidator < ActiveModel::Validator
	def validate(record)
		unless (record.report_start <= record.report_end) 
			record.errors[:report_end] << 'Your ending date must be on or after your starting date!'
		end
	end
end
