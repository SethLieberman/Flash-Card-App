class AddCardIdToLevel < ActiveRecord::Migration
  def change
  	add_column :levels, :card_id, :integer
  end
end
