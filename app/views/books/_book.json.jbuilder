json.extract! book, :id, :title, :isbn, :auther_id, :image_path, :page, :summary, :created_at, :updated_at
json.url book_url(book, format: :json)
