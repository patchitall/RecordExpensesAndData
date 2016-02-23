class AddAttachmentExpenseReceiptToExpenses < ActiveRecord::Migration
  def self.up
    change_table :expenses do |t|
      t.attachment :expense_receipt
    end
  end

  def self.down
    remove_attachment :expenses, :expense_receipt
  end
end
