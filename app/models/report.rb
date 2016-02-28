class Report < ActiveRecord::Base
	validates_with ReportValidator
end
