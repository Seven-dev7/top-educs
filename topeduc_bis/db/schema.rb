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

ActiveRecord::Schema.define(version: 2019_10_31_151533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendars", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "pace"
    t.datetime "starts_at"
    t.integer "duration"
    t.boolean "recurring"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_calendars_on_user_id"
  end

  create_table "carte_vitales", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.jsonb "image_data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_carte_vitales_on_user_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "n_tva"
    t.string "n_siret"
    t.text "address"
    t.string "zip_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "request_id"
    t.bigint "client_id"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.integer "hourly_rate"
    t.string "adress"
    t.string "ZIP_CODE"
    t.string "job"
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_contracts_on_client_id"
    t.index ["request_id"], name: "index_contracts_on_request_id"
    t.index ["user_id"], name: "index_contracts_on_user_id"
  end

  create_table "diplomas", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.jsonb "image_data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_diplomas_on_user_id"
  end

  create_table "factures", force: :cascade do |t|
    t.bigint "bill_sender_id"
    t.bigint "bill_recipient_id"
    t.bigint "client_id"
    t.integer "total_price"
    t.string "month"
    t.float "TVA"
    t.jsonb "xlsx_data"
    t.integer "advance_payment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bill_recipient_id"], name: "index_factures_on_bill_recipient_id"
    t.index ["bill_sender_id"], name: "index_factures_on_bill_sender_id"
    t.index ["client_id"], name: "index_factures_on_client_id"
  end

  create_table "ids", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.jsonb "image_data"
    t.boolean "recto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_ids_on_user_id"
  end

  create_table "kbis", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.jsonb "image_data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_kbis_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.boolean "read?"
    t.bigint "sender_id"
    t.bigint "recipient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipient_id"], name: "index_messages_on_recipient_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "permis_bs", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.jsonb "image_data"
    t.boolean "recto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_permis_bs_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "client_id"
    t.datetime "starts_at"
    t.integer "hourly_rate"
    t.string "adress"
    t.string "ZIP_CODE"
    t.boolean "driving_licence"
    t.string "job"
    t.text "comments"
    t.text "other"
    t.boolean "accepted?"
    t.text "answer_comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "ends_at"
    t.index ["client_id"], name: "index_requests_on_client_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.bigint "user_id"
    t.jsonb "image_data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.index ["user_id"], name: "index_resumes_on_user_id"
  end

  create_table "ribs", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.jsonb "image_data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_ribs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "job"
    t.string "nationality"
    t.string "phone"
    t.boolean "availability"
    t.string "adress"
    t.string "ZIP_CODE"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
