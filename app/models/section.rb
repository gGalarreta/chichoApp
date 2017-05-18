class Section < ApplicationRecord
	has_many :users

	def own_grade
		grade.to_s + " - " + section + " " + year
	end
end
