class Level < ActiveRecord::Base
	has_many :quizzes
	has_many :cards
	
end
