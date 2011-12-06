class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.integer :book_id
      t.integer :author_id
      t.datetime :created_at
      t.date :published_date
      t.string :publisher

      t.timestamps
    end
  end
end
