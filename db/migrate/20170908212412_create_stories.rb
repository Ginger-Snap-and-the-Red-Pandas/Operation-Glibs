class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :name
      t.integer :genre_id, null: false
      t.integer :script_id, null: false

      t.timestamps
    end
  end
end
