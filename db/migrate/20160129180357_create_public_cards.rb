class CreatePublicCards < ActiveRecord::Migration
  def change
    create_table :public_cards do |t|
      t.string :question
      t.string :answer
      t.integer :user_id
      t.string :tag

      t.timestamps null: false
    end
  end
end
