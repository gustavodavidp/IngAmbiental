# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_10_193812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contaminantes", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.decimal "nivel"
    t.bigint "lugare_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lugare_id"], name: "index_contaminantes_on_lugare_id"
  end

  create_table "lugares", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.json "avatar"
    t.string "cont_n1"
    t.decimal "cont_v1"
    t.string "cont_n2"
    t.decimal "cont_v2"
    t.string "cont_n3"
    t.decimal "cont_v3"
    t.string "cont_n4"
    t.decimal "cont_v4"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "contaminantes", "lugares"
end
