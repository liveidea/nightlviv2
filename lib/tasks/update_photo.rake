namespace :photos do 
	task update: :environment do
		@club = Club.all 
		@club.each do |club| 
		  club.refresh_photos
		end
	end
end