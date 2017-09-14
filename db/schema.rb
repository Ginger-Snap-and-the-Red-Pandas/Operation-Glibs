# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170913144534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "generated_words", force: :cascade do |t|
    t.string "word", null: false
    t.integer "story_id", null: false
    t.integer "word_blank_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "character_sprite"
    t.string "genre_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer "story_id", null: false
    t.integer "scene_id", null: false
    t.string "url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "scenes", force: :cascade do |t|
    t.integer "script_id", null: false
    t.string "dialogue", null: false
    t.integer "script_position", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scripts", force: :cascade do |t|
    t.string "name", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string "name"
    t.integer "genre_id", null: false
    t.integer "script_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "share_url"
    t.boolean "public", default: false
  end

  create_table "word_blanks", force: :cascade do |t|
    t.integer "scene_id", null: false
    t.integer "scene_position", null: false
    t.string "word_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
