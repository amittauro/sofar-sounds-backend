# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_10_132431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "videos", force: :cascade do |t|
    t.string "video_uid"
    t.integer "song_id"
    t.integer "artist_id"
    t.string "song_title"
    t.string "song_cached_slug"
    t.integer "city_id"
    t.string "artist_title"
    t.string "artist_cached_slug"
    t.string "city_title"
    t.string "city_cached_slug"
  end

end
