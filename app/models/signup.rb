class Signup < ApplicationRecord
	belongs_to :camper
	belongs_to :activity

	# Add validations to the Signup model:
	# must have a time between 0 and 23 (referring to the hour of day for the 
	# activity)
	
	validates :time, inclusion: {in: 0..23}

end


