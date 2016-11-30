class AddUsernameToUsers < ActiveRecord::Migration
  def change # antthing inside of this method,m is translated into SQL code and modifies the database (curretly SQLite)
  add_column :users, :username, :string #add a new column to table "users" called "username" and of type "string"
  add_index :users, :username, unique: true #first, index usernames for quick (rapid) lookup. Second, ensure usernames are Always unique.
  end
end
