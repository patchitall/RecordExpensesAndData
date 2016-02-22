json.array!(@expenses) do |expense|
  json.extract! expense, :id, :trip_id, :expense_name, :expense_amount, :expense_receipt
  json.url expense_url(expense, format: :json)
end
