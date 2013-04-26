class AddAdminUserAuthenticationStuff < ActiveRecord::Migration
  def up
    rename_column :admin_users, :password, :hashed_password
    add_column :admin_users, :salt, :string
  end

  def down
    remove_column :admin_users, :salt
    rename_column :admin_users, :hashed_password, :password
  end
end
