class AddNameAndLevelIdToQuizzes < ActiveRecord::Migration
  def change
  	remove_column :quizzes, :question_id
  	add_column :quizzes, :name, :string
  	add_column :quizzes, :level_id, :integer
  end
end
