class Photo < ActiveRecord::Base
	mount_uploader :image, PhotoUploader
	belongs_to :parties
	belongs_to :clubs
end
