class PhotosController < ApplicationController



def show
			@party = Party.find(params[:party_id])
			@photos = Photo.where(date: @party.date, club_id: @party.club_id)
	
end




	def index
		if (params[:club_id])
			@photos = Photo.where(club_id: params[:club_id]).page(params[:page])
		else
		    @photos = Photo.all.page(params[:page])
		end
	end
end

