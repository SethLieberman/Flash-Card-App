class FixQuizTable < ActiveRecord::Migration
  def change
  	remove_column :quizzes, :level
  	remove_column :quizzes, :question
  	add_column :quizzes, :question_id, :integer
  end
end
