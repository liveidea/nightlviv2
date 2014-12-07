class PhotosController < ApplicationController



def show
			@party = Party.find(params[:party_id])
			@photos = Photo.where(date: @party.date, club_id: @party.club_id)
end

def look
	@club = Club.find(params[:club_id])
	@photos = Photo.where(club_id: params[:club_id]).page(params[:page])
end	




	def index
		@photos = Photo.all.order(date: :desc).page(params[:page])
	end
end

