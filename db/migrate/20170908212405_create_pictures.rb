class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.integer :story_id, null: false
      t.integer :scene_id, null: false
      t.string  :url, null: false

      t.timestamps
    end
  end
end
