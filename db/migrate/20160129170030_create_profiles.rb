class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :fname
      t.string :lname
      t.integer :credibility
      t.integer :level

      t.timestamps null: false
    end
  end
end
