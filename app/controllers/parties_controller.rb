class PartiesController < ApplicationController

before_action :set_party, only: [:show, :edit, :update]

def index
	@party = Party.all
	@club = Club.all
end

def set_party
	@party = Party.find(params[:id])
end

def new
	if !admin_signed_in?
      redirect_to action: "index"
    else
	@party = Party.new
	end
end

def show
	@club = Club.find(@party.club_id)
end

def edit
	 if !admin_signed_in?
      redirect_to @party
     end
end


def create
	@party = Party.new(party_params)
    if @party.save
     redirect_to @party
    else
     render 'create'
    end
 end

 def update
 	if @party.update(party_params)
 		 redirect_to @party
 	else
 		redirect 'edit'
 end
end



private
def party_params
	params.require(:party).permit(:name, :date, :about, :price, :club_id)
end

end
