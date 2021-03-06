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

ActiveRecord::Schema.define(version: 2019_04_26_143457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "metadata_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "packages", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.string "name_sort"
    t.string "description"
    t.string "longdescription"
    t.string "homepage"
    t.string "license"
    t.string "licenses"
    t.string "herds"
    t.string "maintainers"
    t.string "useflags"
    t.string "metadata_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "useflags", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "versions", force: :cascade do |t|
    t.string "version"
    t.string "package"
    t.string "atom"
    t.integer "sort_key"
    t.string "subslot"
    t.string "eapi"
    t.string "keywords"
    t.string "masks"
    t.string "use"
    t.string "restrict"
    t.string "properties"
    t.string "metadata_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
