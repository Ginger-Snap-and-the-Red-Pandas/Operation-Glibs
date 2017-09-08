class CreateGenre < ActiveRecord::Migration[5.1]
  def change
    create_table :genres do |t|
      t.string :character_sprite
      t.string :genre_name, null: false

      t.timestamps
    end
  end
end
