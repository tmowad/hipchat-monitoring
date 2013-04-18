class CreateHipchatUserSnapshots < ActiveRecord::Migration
  def change
    create_table :hipchat_user_snapshots do |t|
      t.integer "hipchat_user_id"
      t.integer "last_active"
      t.string "status"
      t.string "status_message"

      t.timestamps
    end
  end
end
