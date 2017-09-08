class CreateWordBlanks < ActiveRecord::Migration[5.1]
  def change
    create_table :word_blanks do |t|
      t.integer :scene_id, null: false
      t.integer :scene_position, null: false
      t.string  :word_type, null: false

      t.timestamps
    end
  end
end
