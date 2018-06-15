class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.integer :user_id
      t.integer :book_id
      t.date :checkouted_at
      t.date :returned_at
      t.date :due_date

      t.timestamps
    end
  end
end
