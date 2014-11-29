class ClubsController < ApplicationController
before_action :set_club, only: [:show, :edit, :update]
def new
	@club = Club.new
end

def index
	@club = Club.all
end

def show
	
end

def edit
	
end

def create
  @club = Club.new(club_params)

  if @club.save
     redirect_to @club
  else
     render 'create' 
  end
end

def update
    
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

