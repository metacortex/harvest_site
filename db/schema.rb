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

ActiveRecord::Schema.define(:version => 20110220012050) do

  create_table "assets", :force => true do |t|
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boards", :force => true do |t|
    t.string   "title"
    t.integer  "section_id",                 :null => false
    t.integer  "folder_id",                  :null => false
    t.integer  "posts_count", :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "boards", ["folder_id"], :name => "index_boards_on_folder_id"
  add_index "boards", ["section_id"], :name => "index_boards_on_section_id"

  create_table "comments", :force => true do |t|
    t.integer  "post_id",    :null => false
    t.integer  "user_id",    :null => false
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "folders", :force => true do |t|
    t.integer  "section_id",                  :null => false
    t.string   "name"
    t.integer  "position"
    t.integer  "pages_count",  :default => 0, :null => false
    t.integer  "boards_count", :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "folders", ["position"], :name => "index_folders_on_position"
  add_index "folders", ["section_id"], :name => "index_folders_on_section_id"

  create_table "pages", :force => true do |t|
    t.integer  "section_id", :null => false
    t.integer  "folder_id",  :null => false
    t.string   "title"
    t.text     "content"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["folder_id"], :name => "index_pages_on_folder_id"
  add_index "pages", ["position"], :name => "index_pages_on_position"
  add_index "pages", ["section_id"], :name => "index_pages_on_section_id"

  create_table "posts", :force => true do |t|
    t.integer  "section_id",                             :null => false
    t.integer  "folder_id",                              :null => false
    t.integer  "board_id",                               :null => false
    t.integer  "user_id",                                :null => false
    t.string   "title"
    t.text     "content"
    t.integer  "hits",                    :default => 0, :null => false
    t.integer  "comments_count",          :default => 0, :null => false
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["board_id"], :name => "index_posts_on_board_id"
  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

  create_table "questions", :force => true do |t|
    t.integer  "user_id"
    t.string   "writer_name"
    t.string   "email"
    t.string   "contact_number"
    t.string   "title"
    t.text     "content"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.integer  "folders_count", :default => 0, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "login"
    t.string   "password"
    t.integer  "posts_count",     :default => 0, :null => false
    t.integer  "comments_count",  :default => 0, :null => false
    t.integer  "questions_count", :default => 0, :null => false
    t.integer  "level",           :default => 1, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login"

end
