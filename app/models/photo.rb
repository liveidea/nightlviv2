class Photo < ActiveRecord::Base
	belongs_to :parties
	belongs_to :clubs
end
