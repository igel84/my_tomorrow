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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111016215609) do

  create_table "mestos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_hrefs", :force => true do |t|
    t.integer  "page_id"
    t.integer  "href_id"
    t.boolean  "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.text     "body"
    t.text     "body_html"
    t.string   "locale"
    t.boolean  "published"
    t.integer  "parent_id"
    t.integer  "position"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.string   "video_file_name"
    t.boolean  "eng"
  end

  create_table "pokazs", :force => true do |t|
    t.integer  "page_id"
    t.integer  "date"
    t.string   "time"
    t.integer  "mesto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscribers", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "sex"
    t.string   "email"
    t.boolean  "active",     :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
