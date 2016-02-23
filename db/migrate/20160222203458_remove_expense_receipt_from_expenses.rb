class RemoveExpenseReceiptFromExpenses < ActiveRecord::Migration
  def change
    remove_column :expenses, :expense_receipt, :string
  end
end
