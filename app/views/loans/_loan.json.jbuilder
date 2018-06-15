json.extract! loan, :id, :user_id, :book_id, :checkouted_at, :returned_at, :due_date, :created_at, :updated_at
json.url loan_url(loan, format: :json)
