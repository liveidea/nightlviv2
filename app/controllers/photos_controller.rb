class PhotosController < ApplicationController
	def index
		if (params[:club_id])
			@photos = Photo.where(club_id: params[:club_id]).page(params[:page])
		else
		    @photos = Photo.all.page(params[:page])
		end
	end
end
