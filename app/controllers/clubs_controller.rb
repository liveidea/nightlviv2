class ClubsController < ApplicationController
#ce function set_club, she do in show edit updatei t.d.
before_action :set_club, only: [:show, :edit, :update, :show_photo]

def new
	@club = Club.new
end

def index
	@club = Club.all
end

def show
	
end

def show_photo
  
    client_id = 'IWFWKYLXEAXL4A2VPLHM5NYZ2J445Z5TZEDYRZ1ZPTMYQ3KE'
    client_secret = 'GBYSS3Q0IUEZQOLEZZOZHPQWKYXFVK2HAHTUUUV0JKKP255A'
    today = (Date.today).strftime("%Y%m%d")
    fid ="4dbf2de10cb6f21c126d9cbf"
    client = Foursquare2::Client.new(:client_id => client_id, :client_secret => client_secret, :api_version => today)
    limit = 100
    offset = 0
    begin 
      hash = client.venue_photos(fid, :group => 'venue', :limit => limit, :offset => offset)
      photos_fs = hash["items"].collect{|f| [f["id"], f["createdAt"], "#{f['prefix']}original#{f['suffix']}"]}   
      count = hash["count"] 
      offset = offset+limit   
    end while count != 0
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

