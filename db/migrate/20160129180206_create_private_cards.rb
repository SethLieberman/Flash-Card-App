class CreatePrivateCards < ActiveRecord::Migration
  def change
    create_table :private_cards do |t|
      t.string :question
      t.string :answer
      t.string :tag
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
