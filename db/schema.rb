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

ActiveRecord::Schema.define(version: 20180528174124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "politicans", force: :cascade do |t|
    t.string "member_id"
    t.string "api_uri"
    t.string "first_name"
    t.string "last_name"
    t.string "date_of_birth"
    t.string "party"
    t.string "twitter_account"
    t.string "facebook_account"
    t.string "youtube_account"
    t.string "govtrack_id"
    t.string "cspan_id"
    t.string "votesmart_id"
    t.string "icpsr_id"
    t.string "crp_id"
    t.string "fec_candidate_id"
    t.string "next_election"
    t.string "missed_votes"
    t.string "total_present"
    t.string "ocd_id"
    t.string "office"
    t.string "phone"
    t.string "state"
    t.string "lis_id"
    t.string "missed_votes_pct"
    t.string "votes_with_party_pct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
