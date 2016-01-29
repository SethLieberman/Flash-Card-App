class AddUsernameToProfile < ActiveRecord::Migration
  def change
  	remove_column :users, :username
  	add_column :profiles, :username, :string
  end
end
