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

ActiveRecord::Schema.define(version: 20170420172159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cuisines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diet_recipes", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "diet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diet_id"], name: "index_diet_recipes_on_diet_id", using: :btree
    t.index ["recipe_id"], name: "index_diet_recipes_on_recipe_id", using: :btree
  end

  create_table "diets", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.decimal  "amount"
    t.string   "measure"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["ingredient_id"], name: "index_items_on_ingredient_id", using: :btree
    t.index ["recipe_id"], name: "index_items_on_recipe_id", using: :btree
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "cuisine_id"
    t.string   "ingredients",     default: [],              array: true
    t.integer  "timeoftheday_id"
  end

  create_table "steps", force: :cascade do |t|
    t.text     "description"
    t.string   "items",       default: [],              array: true
    t.integer  "recipe_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "amounts",     default: [],              array: true
    t.index ["recipe_id"], name: "index_steps_on_recipe_id", using: :btree
  end

  create_table "time_of_the_days", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "steps", "recipes"
end
