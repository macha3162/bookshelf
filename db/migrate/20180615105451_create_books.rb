class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :auther_id
      t.string :image_path
      t.integer :page
      t.text :summary

      t.timestamps
    end
  end
end
