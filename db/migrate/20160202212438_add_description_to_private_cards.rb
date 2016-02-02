class AddDescriptionToPrivateCards < ActiveRecord::Migration
  def change
  	add_column :private_cards, :description, :string, :limit => 25
  end
end
