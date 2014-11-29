class PartiesController < ApplicationController

before_action :

def index
	@party = Party.all
end

def set_party
	@party = Party.find(params[:id])
end

def new
	@party = Party.new
end

def show
	@party = Party.find(params[:id])
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
 	@party = Party.find (params[:id])
 	if @party.update(party_params)
 		@party.save
 	else
 		redirect 'update'
 end

private
def party_params
	params.require(:party).permit(:name, :date, :about, :price, :club_id)
end

end
