class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :card_id

      t.timestamps null: false
    end
  end
end
