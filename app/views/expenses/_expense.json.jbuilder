json.extract! expense, :id, :amount, :fund_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
