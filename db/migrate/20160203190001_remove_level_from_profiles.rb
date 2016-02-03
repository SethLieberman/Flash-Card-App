class RemoveLevelFromProfiles < ActiveRecord::Migration
  def change
  	remove_column :profiles, :level
  end
end
