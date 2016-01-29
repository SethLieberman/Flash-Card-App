class Level < ActiveRecord::Base
	has_one :quiz
	has_many :cards
	
end
