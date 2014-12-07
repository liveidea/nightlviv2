class Photo < ActiveRecord::Base
	mount_uploader :image, PhotoUploader
	belongs_to :party
	belongs_to :club
	 paginates_per 9
	 scope :random, -> {order("RAND()")}
end
