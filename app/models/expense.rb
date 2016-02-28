class Expense < ActiveRecord::Base
	include ActiveModel::Validations 
	belongs_to :trip

	has_attached_file :expense_receipt, styles: { medium: "300x300>", thumb: "50x50>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :expense_receipt, content_type: /\Aimage\/.*\Z/
  	validates :expense_name, presence: true
  	validates :expense_amount, presence: true
    validates :trip_id, presence: true
  	validates_with ExpenseValidator


  	def receipt_check?
  		if self.expense_receipt.present?
  			true
    	end
    end
end

