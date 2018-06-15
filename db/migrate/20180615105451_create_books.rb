class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, nil: false
      t.string :isbn, nil: false
      t.string :manufacturer
      t.string :image_url
      t.string :book_url
      t.integer :author_id
      t.integer :user_id
      t.integer :page, nil: false, default: 0
      t.text :summary

      t.timestamps
    end
  end
end
