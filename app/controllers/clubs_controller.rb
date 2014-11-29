class ClubsController < ApplicationController

def new
	@club = Club.new
end

def index
	@club = Club.all
end

def show
	@club = Club.find(params[:id])
end

def edit
	@club = Club.find(params[:id])
end

def create
    @club = Club.new(club_params)

    @club.save
    redirect_to @club
 end

  def update
    @club = Club.find(params[:id])
 
    if @club.update(club_params)
      redirect_to @club
    else
      render 'edit'
    end
  end
 def set_club
      @club = Club.find(params[:id])
    end

private
    def club_params
      params.require(:club).permit(:name, :address, :about, :photo_id, :forsquare_id)
    end

end

