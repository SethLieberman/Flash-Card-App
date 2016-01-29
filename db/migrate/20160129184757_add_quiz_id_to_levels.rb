class AddQuizIdToLevels < ActiveRecord::Migration
  def change
  	add_column :levels, :quiz_id, :integer
  end
end
