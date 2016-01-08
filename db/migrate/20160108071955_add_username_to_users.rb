class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside this will change to SQLcode
  add_column :users, :username, :string # add a new column to users
  add_index :users, :username, unique: true # imdex username for quick lookup
  end
end
