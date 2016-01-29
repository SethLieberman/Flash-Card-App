class Quiz < ActiveRecord::Base
	has_many :questions
	belongs_to :level
end
