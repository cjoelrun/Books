class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :id
      t.string :selfLink
      t.string :title
      t.string :subtitle

      t.timestamps
    end
  end
end