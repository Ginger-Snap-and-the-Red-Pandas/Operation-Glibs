class CreateGeneratedWords < ActiveRecord::Migration[5.1]
  def change
    create_table :generated_words do |t|
      t.string :word, null: false
      t.integer :story_id, null: false
      t.integer :word_blank_id, null: false

      t.timestamps
    end
  end
end
