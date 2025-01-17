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

ActiveRecord::Schema.define(version: 2023_06_07_194020) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "country_of_origin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar_url"
  end

  create_table "arts", force: :cascade do |t|
    t.string "title"
    t.integer "artist_id"
    t.integer "review_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
    t.string "description"
    t.integer "likes"
    t.integer "dislikes"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "star_rating"
    t.string "comments"
    t.integer "viewer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "art_id"
  end

  create_table "viewers", force: :cascade do |t|
    t.string "name"
    t.string "country_of_origin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "profile_pic_url"
  end

end
