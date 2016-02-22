class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :trip_id
      t.string :expense_name
      t.float :expense_amount
      t.string :expense_receipt

      t.timestamps null: false
    end
  end
end
