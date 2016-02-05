class RemoveCardIdFromLevels < ActiveRecord::Migration
  def change
  	remove_column :levels, :card_id
  end
end
