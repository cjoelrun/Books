class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :publisher
      t.date :published_date
      t.string :description
      t.string :isbn
      t.string :isbn_10
      t.integer :page_count
      t.decimal :average_rating
      t.integer :ratings_count
      t.string :preview_link
      t.string :info_link
      t.string :cover_thumbnail
      t.string :cover_small
      t.string :cover_medium
      t.string :cover_large
      t.string :cover_extra_large

      t.timestamps
    end
  end
end
