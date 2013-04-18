class CreateHipchatUsers < ActiveRecord::Migration
  def change
    # create_table :users, :id => false do |t|
    create_table :hipchat_users do |t|
      # old method
      # t.column "name", :string, options
      # "sexy" migrations
      # t.string "name", options

      # t.integer "id"

      t.integer "admin_user_id"

      t.integer "api_user_id"
      t.string "api_name"
      t.string "api_email"
      t.string "api_mention_name"
      t.string "api_title"
      
      # t.datetime "created_at"
      # t.datetime "updated_at"
      
      t.timestamps
    end
  end
end
