class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :level
      t.string :question

      t.timestamps null: false
    end
  end
end
