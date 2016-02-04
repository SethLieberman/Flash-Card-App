class RemoveColumnsFromUserForPaperclip < ActiveRecord::Migration
  def change
  	if column_exists? :users, :avatar_file_name
  		remove_column :users, :avatar_file_name
  	end
  	if column_exists? :users, :avatar_content_type
  		remove_column :users, :avatar_content_type
  	end
  	if column_exists? :users, :avatar_file_size
  		remove_column :users, :avatar_file_size
  	end
  	if column_exists? :users, :avatar_updated_at
  		remove_column :users, :avatar_updated_at
  	end
  end
end
