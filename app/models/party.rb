class Party < ActiveRecord::Base
	has_many :photos
	belongs_to :club
	
end
