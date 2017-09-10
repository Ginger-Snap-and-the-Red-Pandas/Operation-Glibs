class CreateScenes < ActiveRecord::Migration[5.1]
  def change
    create_table :scenes do |t|
      t.integer :script_id, null: false
      t.string :dialogue, null: false
      t.integer :script_position, null: false

      t.timestamps
    end
  end
end


