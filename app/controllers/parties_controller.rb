class PartiesController < ApplicationController

def index
	@party = Party.all
end

def new
	@party = Party.new
end

def show
	@party = Party.find(params[:id])
end

def create
	 @party = Party.new(party_params)
    @party.save
    redirect_to @party
 end

private
def party_params
	params.require(:party).permit(:name, :date, :about, :price, :club_id)
end

end
