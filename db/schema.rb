# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 8) do

  create_table "engine_schema_info", :id => false, :force => true do |t|
    t.column "engine_name", :string,                :default => nil
    t.column "version",     :integer, :limit => 11, :default => 0
  end

  create_table "notes", :force => true do |t|
    t.column "content",    :text
    t.column "ticket_id",  :integer,  :limit => 11, :default => 0
    t.column "user_id",    :integer,  :limit => 11, :default => 0
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "states", :force => true do |t|
    t.column "description", :string,                :default => nil
    t.column "priority",    :integer, :limit => 11, :default => 0
  end

  create_table "tags", :force => true do |t|
    t.column "name", :string, :default => nil
  end

  create_table "tags_tickets", :id => false, :force => true do |t|
    t.column "ticket_id", :integer, :limit => 11, :default => 0
    t.column "tag_id",    :integer, :limit => 11, :default => 0
  end

  create_table "tickets", :force => true do |t|
    t.column "description", :string,                 :default => nil
    t.column "user_id",     :integer,  :limit => 11, :default => 0
    t.column "state_id",    :integer,  :limit => 11, :default => 0
    t.column "parts",       :string,                 :default => nil
    t.column "referrals",   :string,                 :default => nil
    t.column "created_at",  :datetime
    t.column "updated_at",  :datetime
  end

  create_table "users", :force => true do |t|
    t.column "login",           :string,   :limit => 80, :default => "",   :null => false
    t.column "salted_password", :string,   :limit => 40, :default => "",   :null => false
    t.column "email",           :string,   :limit => 60, :default => "",   :null => false
    t.column "firstname",       :string,   :limit => 40, :default => nil
    t.column "lastname",        :string,   :limit => 40, :default => nil
    t.column "salt",            :string,   :limit => 40, :default => "",   :null => false
    t.column "verified",        :integer,  :limit => 11, :default => 0
    t.column "role",            :string,   :limit => 40, :default => nil
    t.column "security_token",  :string,   :limit => 40, :default => nil
    t.column "token_expiry",    :datetime
    t.column "created_at",      :datetime
    t.column "updated_at",      :datetime
    t.column "logged_in_at",    :datetime
    t.column "deleted",         :integer,  :limit => 11, :default => 0
    t.column "delete_after",    :datetime
  end

end
