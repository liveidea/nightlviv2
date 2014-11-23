class Club < ActiveRecord::Base
	has_many :parties
	has_many :photos
end
