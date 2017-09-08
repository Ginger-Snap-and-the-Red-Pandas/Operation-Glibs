class CreateScripts < ActiveRecord::Migration[5.1]
  def change
    create_table :scripts do |t|
      t.string :name, null: false
      t.integer :genre_id, null: false

      t.timestamps
    end
  end
end
