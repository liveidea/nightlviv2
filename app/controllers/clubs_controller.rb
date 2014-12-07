class ClubsController < ApplicationController
#ce function set_club, she do in show edit updatei t.d.
before_action :set_club, only: [:show, :edit, :update, :show_photo]

def new
  if !admin_signed_in?
      redirect_to action: "index"
  else
	@club = Club.new
  end
end

def index

	@club = Club.all

end

def show
	
end



def edit
	   if !admin_signed_in?
      redirect_to @club
     end

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
          
  if @club.update(club_params) &&  admin_signed_in? 
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

