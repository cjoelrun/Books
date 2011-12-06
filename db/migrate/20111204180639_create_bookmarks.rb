class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :book_id
      t.integer :user_id
      t.datetime :created_at
      t.string :shelf

      t.timestamps
    end
  end
end
