# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20120707080011) do

  create_table "addressbookitems", :force => true do |t|
    t.string    "name",           :limit => 100
    t.text      "descr"
    t.timestamp "date",                                         :null => false
    t.integer   "is_active",                     :default => 1
    t.integer   "is_public",                     :default => 0
    t.string    "phone",          :limit => 200
    t.string    "address",        :limit => 600
    t.integer   "user_id",                       :default => 1
    t.timestamp "updated_at",                                   :null => false
    t.integer   "city_id"
    t.integer   "event_id"
    t.integer   "venue_id"
    t.string    "email",          :limit => 300
    t.timestamp "created_at",                                   :null => false
    t.integer   "is_trash",                      :default => 0
    t.integer   "cities_user_id",                :default => 0, :null => false
  end

  create_table "addressbookitems_tags", :force => true do |t|
    t.integer  "addressbookitem_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string    "name",                       :limit => 200,                                                :null => false
    t.integer   "country_id",                                                                               :null => false
    t.text      "descr"
    t.decimal   "x",                                         :precision => 14, :scale => 10
    t.decimal   "y",                                         :precision => 14, :scale => 10
    t.timestamp "created_at",                                                                               :null => false
    t.timestamp "updated_at",                                                                               :null => false
    t.integer   "is_public",                                                                 :default => 1, :null => false
    t.integer   "is_trash",                                                                  :default => 0, :null => false
    t.string    "name_seo",                   :limit => 600,                                                :null => false
    t.integer   "is_feature",                                                                :default => 0, :null => false
    t.integer   "user_id",                                                                                  :null => false
    t.integer   "profile_photo_id"
    t.string    "profile_photo_file_name"
    t.string    "profile_photo_content_type"
    t.integer   "profile_photo_file_size"
    t.datetime  "profile_photo_updated_at"
  end

  create_table "cities_maps", :force => true do |t|
    t.integer "city_id",                 :null => false
    t.integer "map_id",                  :null => false
    t.integer "is_trash", :default => 0, :null => false
  end

  create_table "cities_users", :force => true do |t|
    t.integer   "city_id"
    t.integer   "user_id"
    t.timestamp "date",                                        :null => false
    t.string    "name",      :limit => 600
    t.text      "descr",                                       :null => false
    t.boolean   "is_public",                :default => true
    t.boolean   "is_trash",                 :default => false, :null => false
  end

  create_table "communities", :force => true do |t|
    t.integer   "city_id",                                                   :null => false
    t.integer   "language_id",                                               :null => false
    t.string    "name",               :limit => 200,                         :null => false
    t.text      "descr",              :limit => 16777215
    t.boolean   "is_public",                              :default => true
    t.integer   "user_id",                                :default => 1
    t.boolean   "is_trash",                               :default => false, :null => false
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "photo_file_name"
    t.string    "photo_content_type"
    t.integer   "photo_file_size"
    t.datetime  "photo_updated_at"
    t.string    "name_seo",           :limit => 600
  end

  create_table "communities_users", :force => true do |t|
    t.integer "community_id"
    t.integer "user_id"
  end

  create_table "community_announcements", :force => true do |t|
    t.integer   "language_id",                                    :null => false
    t.integer   "community_id",                                   :null => false
    t.string    "name",         :limit => 200,                    :null => false
    t.text      "descr"
    t.timestamp "created_at",                                     :null => false
    t.timestamp "modified_at",                                    :null => false
    t.integer   "user_id"
    t.boolean   "is_trash",                    :default => false
  end

  create_table "countries", :force => true do |t|
    t.string    "name",        :limit => 200,                                                :null => false
    t.text      "descr"
    t.decimal   "x",                          :precision => 14, :scale => 10
    t.decimal   "y",                          :precision => 14, :scale => 10
    t.timestamp "created_at",                                                                :null => false
    t.timestamp "updated_at",                                                                :null => false
    t.integer   "is_public",                                                  :default => 1, :null => false
    t.integer   "language_id"
    t.text      "name_seo"
  end

  create_table "days", :force => true do |t|
    t.text     "a1",          :limit => 255
    t.text     "a2",          :limit => 255
    t.text     "a3",          :limit => 255
    t.text     "a4",          :limit => 255
    t.text     "a5",          :limit => 255
    t.text     "work",                                          :null => false
    t.text     "dream"
    t.integer  "user_id",                    :default => 1
    t.integer  "is_public",                  :default => 0
    t.boolean  "is_trash",                   :default => false, :null => false
    t.string   "date"
    t.datetime "created_at"
    t.datetime "modified_at"
  end

  create_table "dictionaryitems", :force => true do |t|
    t.string    "name",         :limit => 600
    t.text      "descr"
    t.integer   "user_id",                                        :null => false
    t.timestamp "created_at",                                     :null => false
    t.timestamp "updated_at",                                     :null => false
    t.text      "descr_ru"
    t.text      "descr_pt"
    t.string    "name_ru",      :limit => 600
    t.string    "name_pt",      :limit => 600
    t.boolean   "is_public",                   :default => true,  :null => false
    t.boolean   "is_trash",                    :default => false, :null => false
    t.boolean   "is_feature",                  :default => false, :null => false
    t.integer   "major_tag_id"
    t.integer   "issue_id"
  end

  create_table "dictionaryitems_tags", :force => true do |t|
    t.integer "dictionaryitem_id"
    t.integer "tag_id"
  end

  create_table "edge_types", :force => true do |t|
    t.string "name", :limit => 600, :null => false
  end

  create_table "edges", :force => true do |t|
    t.string  "source",     :limit => 36,                                                 :null => false
    t.string  "target",     :limit => 36,                                                 :null => false
    t.decimal "weight",                    :precision => 20, :scale => 10
    t.string  "name",       :limit => 600
    t.integer "user_id",                                                                  :null => false
    t.integer "is_private",                                                :default => 0
  end

  create_table "edit_reports_users", :force => true do |t|
    t.integer "user_id",   :null => false
    t.integer "report_id", :null => false
  end

  create_table "events", :force => true do |t|
    t.string    "name",               :limit => 200,                                                    :null => false
    t.text      "descr"
    t.decimal   "x",                                 :precision => 14, :scale => 10
    t.decimal   "y",                                 :precision => 14, :scale => 10
    t.integer   "user_id",                                                                              :null => false
    t.timestamp "created_at",                                                                           :null => false
    t.timestamp "updated_at",                                                                           :null => false
    t.timestamp "date",                                                                                 :null => false
    t.boolean   "is_public",                                                         :default => true,  :null => false
    t.boolean   "is_trash",                                                          :default => false, :null => false
    t.integer   "issue_id"
    t.integer   "community_id"
    t.integer   "city_id"
    t.string    "name_seo",           :limit => 200
    t.string    "photo_file_name"
    t.string    "photo_content_type"
    t.integer   "photo_file_size"
    t.datetime  "photo_updated_at"
    t.integer   "venue_id"
  end

  create_table "friends_users", :force => true do |t|
    t.integer "user_id",   :null => false
    t.integer "friend_id", :null => false
  end

  create_table "galleries", :force => true do |t|
    t.string    "name",       :limit => 200,                                                 :null => false
    t.string    "name_seo",   :limit => 600,                                 :default => ""
    t.text      "descr"
    t.decimal   "x",                         :precision => 14, :scale => 10
    t.decimal   "y",                         :precision => 14, :scale => 10
    t.integer   "user_id",                                                                   :null => false
    t.timestamp "created_at",                                                                :null => false
    t.timestamp "updated_at",                                                                :null => false
    t.integer   "is_public",                                                 :default => 0,  :null => false
    t.integer   "city_id"
    t.integer   "venue_id"
    t.integer   "event_id"
    t.integer   "is_feature",                                                :default => 0,  :null => false
    t.integer   "is_trash",                                                  :default => 0,  :null => false
    t.integer   "issue_id"
  end

  create_table "galleries_reports", :force => true do |t|
    t.integer "gallery_id"
    t.integer "report_id"
  end

  create_table "galleries_tags", :force => true do |t|
    t.integer "tag_id"
    t.integer "gallery_id"
  end

  create_table "groups", :force => true do |t|
    t.string   "name",     :limit => 100, :null => false
    t.datetime "created"
    t.datetime "modified"
  end

  create_table "helps", :force => true do |t|
    t.string    "name",       :limit => 200,                    :null => false
    t.text      "descr"
    t.integer   "user_id",                                      :null => false
    t.timestamp "created_at",                                   :null => false
    t.timestamp "updated_at",                                   :null => false
    t.integer   "help_id",                   :default => 0,     :null => false
    t.boolean   "is_trash",                  :default => false, :null => false
    t.boolean   "is_feature",                :default => false, :null => false
  end

  create_table "i18n", :force => true do |t|
    t.string  "locale",      :limit => 6, :null => false
    t.string  "model",                    :null => false
    t.integer "foreign_key",              :null => false
    t.string  "field",                    :null => false
    t.text    "content"
  end

  add_index "i18n", ["field"], :name => "field"
  add_index "i18n", ["foreign_key"], :name => "row_id"
  add_index "i18n", ["locale"], :name => "locale"
  add_index "i18n", ["model"], :name => "model"

  create_table "issues", :force => true do |t|
    t.timestamp "date",                          :null => false
    t.text      "name"
    t.text      "descr"
    t.boolean   "is_trash",   :default => false
    t.boolean   "is_public",  :default => true
    t.integer   "user_id",    :default => 1
    t.timestamp "created_at",                    :null => false
    t.timestamp "updated_at",                    :null => false
  end

  create_table "languages", :force => true do |t|
    t.string  "name",      :limit => 200,                :null => false
    t.text    "descr"
    t.string  "abbr3",     :limit => 3
    t.integer "is_public",                :default => 1, :null => false
    t.integer "is_trash",                 :default => 0, :null => false
  end

  create_table "links", :force => true do |t|
    t.string  "name",      :limit => 600, :default => "",    :null => false
    t.text    "descr"
    t.integer "user_id",                                     :null => false
    t.integer "weight",                   :default => 0,     :null => false
    t.boolean "is_trash",                 :default => false, :null => false
    t.boolean "is_public",                :default => true,  :null => false
  end

  create_table "maps", :force => true do |t|
    t.string    "name",       :limit => 200,                                                    :null => false
    t.string    "name_seo",   :limit => 200,                                                    :null => false
    t.text      "descr"
    t.decimal   "x",                         :precision => 14, :scale => 10
    t.decimal   "y",                         :precision => 14, :scale => 10
    t.integer   "user_id",                                                                      :null => false
    t.timestamp "created_at",                                                                   :null => false
    t.timestamp "updated_at",                                                                   :null => false
    t.integer   "is_public",  :limit => 1,                                   :default => 1,     :null => false
    t.boolean   "is_trash",                                                  :default => false, :null => false
  end

  create_table "maps_tags", :force => true do |t|
    t.integer "tag_id", :null => false
    t.integer "map_id", :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer   "user_id",                                          :null => false
    t.string    "recepient_username", :limit => 200,                :null => false
    t.timestamp "date",                                             :null => false
    t.string    "name",               :limit => 500
    t.text      "descr"
    t.integer   "is_read",                           :default => 0, :null => false
    t.integer   "is_trash",                          :default => 0, :null => false
    t.integer   "parent_id"
  end

  create_table "newsitems", :force => true do |t|
    t.integer   "some_id"
    t.string    "model_name",                :limit => 200
    t.string    "name",                      :limit => 200
    t.integer   "is_created",                               :default => 0
    t.integer   "user_id"
    t.integer   "country_id"
    t.integer   "city_id"
    t.integer   "video_id"
    t.integer   "venue_id"
    t.integer   "dictionaryitem_id"
    t.integer   "map_id"
    t.integer   "report_id"
    t.integer   "event_id"
    t.integer   "gallery_id"
    t.integer   "day_id"
    t.integer   "tag_id"
    t.integer   "addressbookitem_id"
    t.timestamp "date",                                                        :null => false
    t.text      "descr"
    t.integer   "status_id"
    t.integer   "photo_id"
    t.string    "node_id",                   :limit => 36
    t.string    "edge_id",                   :limit => 36
    t.string    "property_id",               :limit => 36
    t.integer   "language_id"
    t.integer   "community_id"
    t.integer   "community_announcement_id"
    t.integer   "help_id"
    t.integer   "cities_user_id"
    t.text      "meta_keywords"
    t.text      "meta_description"
    t.integer   "link_id"
    t.integer   "scratchpad_id"
    t.integer   "todo_id"
    t.boolean   "is_trash",                                 :default => false
    t.integer   "venue_type_id"
    t.integer   "is_public",                                :default => 1
    t.integer   "isue_id"
    t.integer   "subscription_id"
  end

  create_table "nodes", :force => true do |t|
    t.string "name",      :limit => 600
    t.text   "descr"
    t.string "user_id",   :limit => 12
    t.string "parent_id", :limit => 36
  end

  create_table "photocontests", :force => true do |t|
    t.integer   "city_id"
    t.string    "name",       :limit => 600,                    :null => false
    t.string    "name_seo",   :limit => 200,                    :null => false
    t.text      "descr"
    t.boolean   "is_trash",                  :default => false, :null => false
    t.timestamp "created_at",                                   :null => false
    t.timestamp "updated_at",                                   :null => false
    t.integer   "user_id",                                      :null => false
  end

  create_table "photocontests_tags", :force => true do |t|
    t.integer "photocontest_id", :null => false
    t.integer "tag_id",          :null => false
  end

  create_table "photos", :force => true do |t|
    t.string    "name",               :limit => 200
    t.timestamp "created_at",                                                                           :null => false
    t.timestamp "updated_at",                                                                           :null => false
    t.integer   "user_id",                                                                              :null => false
    t.boolean   "is_public",                                                         :default => false, :null => false
    t.boolean   "is_trash",                                                          :default => false, :null => false
    t.integer   "photocontest_id"
    t.decimal   "x",                                 :precision => 14, :scale => 10
    t.decimal   "y",                                 :precision => 14, :scale => 10
    t.integer   "city_id"
    t.string    "photo_file_name"
    t.string    "photo_content_type"
    t.integer   "photo_file_size"
    t.datetime  "photo_updated_at"
    t.integer   "gallery_id",                                                        :default => 0,     :null => false
  end

  create_table "playlists", :force => true do |t|
    t.string    "name",        :limit => 200,                    :null => false
    t.text      "descr"
    t.integer   "user_id"
    t.timestamp "created_at",                                    :null => false
    t.timestamp "modified_at",                                   :null => false
    t.boolean   "is_trash",                   :default => false, :null => false
  end

  create_table "playlists_videos", :force => true do |t|
    t.integer "playlist_id"
    t.integer "video_id"
  end

  create_table "ratings", :force => true do |t|
    t.string   "url"
    t.string   "ip"
    t.integer  "rating"
    t.datetime "date"
    t.integer  "node_id"
    t.integer  "referrer_id"
  end

  create_table "referrers", :force => true do |t|
    t.string   "url"
    t.datetime "date"
    t.integer  "user_id"
  end

  create_table "reports", :force => true do |t|
    t.string    "name",                :limit => 200,                                 :default => "",    :null => false
    t.text      "descr",                                                                                 :null => false
    t.decimal   "x",                                  :precision => 14, :scale => 10
    t.decimal   "y",                                  :precision => 14, :scale => 10
    t.integer   "user_id",                                                            :default => 1,     :null => false
    t.timestamp "created_at",                                                                            :null => false
    t.timestamp "updated_at",                                                                            :null => false
    t.integer   "is_public",                                                          :default => 0
    t.integer   "city_id"
    t.integer   "is_done",                                                            :default => 0
    t.integer   "is_feature",                                                         :default => 0,     :null => false
    t.text      "subhead"
    t.integer   "is_trash",                                                           :default => 0,     :null => false
    t.boolean   "is_anonymous",                                                       :default => false
    t.integer   "rating_numerator",                                                   :default => 0
    t.integer   "rating_denominator",                                                 :default => 0
    t.integer   "inappropriate_count",                                                :default => 0
    t.text      "name_seo"
    t.integer   "issue_id"
    t.integer   "day_id"
    t.boolean   "is_outsource",                                                       :default => false
    t.integer   "cities_user_id"
    t.string    "photo_file_name"
    t.string    "photo_content_type"
    t.integer   "photo_file_size"
    t.datetime  "photo_updated_at"
    t.string    "address"
    t.datetime  "active_at"
  end

  create_table "reports_tags", :force => true do |t|
    t.integer "report_id", :null => false
    t.integer "tag_id",    :null => false
  end

  create_table "scratchpads", :force => true do |t|
    t.string  "user_id",  :limit => 36
    t.string  "name",     :limit => 600
    t.text    "descr"
    t.boolean "is_trash",                :default => false, :null => false
  end

  create_table "services", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "uname"
    t.string   "uemail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "share_reports_users", :force => true do |t|
    t.integer "user_id",   :null => false
    t.integer "report_id", :null => false
  end

  create_table "share_tags_users", :force => true do |t|
    t.integer "tag_id"
    t.integer "user_id"
  end

  create_table "statuses", :force => true do |t|
    t.text      "name",                          :null => false
    t.timestamp "created_at",                    :null => false
    t.integer   "user_id",    :default => 1,     :null => false
    t.boolean   "is_trash",   :default => false, :null => false
    t.integer   "issue_id"
    t.timestamp "updated_at",                    :null => false
    t.integer   "is_public"
    t.integer   "tag_id"
  end

  create_table "subscription_types", :force => true do |t|
    t.string   "name"
    t.text     "descr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "is_confirm"
    t.integer  "is_trash"
    t.string   "confirmation_code"
    t.integer  "subscription_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "referrer"
  end

  create_table "tags", :force => true do |t|
    t.string    "name",       :limit => 200,                    :null => false
    t.string    "name_seo",   :limit => 600,                    :null => false
    t.text      "descr"
    t.integer   "parent_id",                 :default => 1
    t.integer   "user_id",                   :default => 0,     :null => false
    t.timestamp "created_at",                                   :null => false
    t.timestamp "updated_at",                                   :null => false
    t.integer   "is_public",                 :default => 1,     :null => false
    t.boolean   "is_feature",                :default => false, :null => false
    t.boolean   "is_trash",                  :default => false, :null => false
  end

  create_table "tags_venues", :force => true do |t|
    t.integer "venue_id", :null => false
    t.integer "tag_id",   :null => false
  end

  create_table "tags_videos", :force => true do |t|
    t.integer "tag_id"
    t.integer "video_id"
  end

  create_table "timezones", :force => true do |t|
    t.string "name", :limit => 200
  end

  create_table "todos", :force => true do |t|
    t.datetime "date_start"
    t.datetime "date_finish"
    t.integer  "is_done",                    :default => 0
    t.string   "name",        :limit => 800
    t.text     "descr"
    t.integer  "user_id"
    t.boolean  "is_trash",                   :default => false, :null => false
    t.boolean  "is_public",                  :default => false, :null => false
  end

  create_table "users", :force => true do |t|
    t.integer   "group_id",                                                              :default => 3,     :null => false
    t.datetime  "created_at",                                                                               :null => false
    t.timestamp "updated_at",                                                                               :null => false
    t.string    "username",               :limit => 200
    t.text      "descr"
    t.decimal   "x",                                     :precision => 14, :scale => 10
    t.decimal   "y",                                     :precision => 14, :scale => 10
    t.integer   "city_id"
    t.text      "scratchpad"
    t.string    "email",                  :limit => 600
    t.boolean   "is_agreed",                                                             :default => false, :null => false
    t.boolean   "is_trash",                                                              :default => false, :null => false
    t.boolean   "is_feature",                                                            :default => false, :null => false
    t.string    "encrypted_password",     :limit => 600
    t.boolean   "is_optin",                                                              :default => false, :null => false
    t.integer   "issue_id"
    t.text      "salt"
    t.string    "reset_password_token",   :limit => 600
    t.datetime  "reset_password_sent_at"
    t.datetime  "rememver_created_at"
    t.integer   "sign_in_count"
    t.datetime  "current_sign_in_at"
    t.datetime  "last_sign_in_at"
    t.string    "current_sign_in_ip",     :limit => 600
    t.string    "last_sign_in_ip",        :limit => 600
    t.string    "password_salt",          :limit => 600
    t.integer   "profile_photo_id"
    t.text      "provider"
    t.text      "uid"
    t.datetime  "remember_created_at"
  end

  create_table "venue_types", :force => true do |t|
    t.string  "name",     :limit => 200
    t.text    "descr"
    t.boolean "is_trash",                :default => false, :null => false
    t.string  "name_seo"
  end

  create_table "venues", :force => true do |t|
    t.string    "name",               :limit => 200,                                                    :null => false
    t.datetime  "date"
    t.text      "descr"
    t.boolean   "is_public",                                                         :default => false, :null => false
    t.text      "venue_type_id"
    t.text      "address"
    t.decimal   "x",                                 :precision => 14, :scale => 10
    t.decimal   "y",                                 :precision => 14, :scale => 10
    t.timestamp "updated_at",                                                                           :null => false
    t.text      "user_id",                                                                              :null => false
    t.text      "city_id"
    t.boolean   "is_trash",                                                          :default => false, :null => false
    t.integer   "issue_id"
    t.integer   "cities_user_id"
    t.integer   "is_feature"
    t.timestamp "created_at"
    t.string    "photo_file_name"
    t.string    "photo_content_type"
    t.integer   "photo_file_size"
    t.datetime  "photo_updated_at"
    t.boolean   "su"
    t.boolean   "mo"
    t.boolean   "tu"
    t.boolean   "we"
    t.boolean   "th"
    t.boolean   "fr"
    t.boolean   "sa"
    t.text      "name_seo"
  end

  create_table "videos", :force => true do |t|
    t.string    "name",        :limit => 200
    t.string    "name_seo",    :limit => 600
    t.text      "descr"
    t.decimal   "x",                          :precision => 14, :scale => 10
    t.decimal   "y",                          :precision => 14, :scale => 10
    t.integer   "user_id",                                                                       :null => false
    t.timestamp "created_at",                                                                    :null => false
    t.timestamp "updated_at",                                                                    :null => false
    t.integer   "is_public",                                                  :default => 0,     :null => false
    t.integer   "city_id"
    t.integer   "w"
    t.integer   "h"
    t.string    "youtube_url", :limit => 100
    t.integer   "is_feature",                                                 :default => 0,     :null => false
    t.boolean   "is_trash",                                                   :default => false, :null => false
    t.integer   "issue_id"
  end

end
