class Club < ActiveRecord::Base
	has_many :parties
	has_many :photos

	def refresh_photos
	  photo_ids = photos.collect{|f| f.photo_foursquare_id}
      
      client_id = 'IWFWKYLXEAXL4A2VPLHM5NYZ2J445Z5TZEDYRZ1ZPTMYQ3KE'
	  client_secret = 'GBYSS3Q0IUEZQOLEZZOZHPQWKYXFVK2HAHTUUUV0JKKP255A'
	  today = (Date.today).strftime("%Y%m%d")
	  client = Foursquare2::Client.new(:client_id => client_id, :client_secret => client_secret, :api_version => today)
	  limit = 30
	  offset = 0
	  new_photos = 0
	  count = 1
<<<<<<< HEAD
	  photos_fs = [1,2]
=======
	  photos_fs = [1, 2, 3, 4, 5, 6]
>>>>>>> 0c16e9b9fe2c703d907a9c7704954b7633158aa1
      while count != 0 && photos_fs.count !=0 
        hash = client.venue_photos(forsquare_id, :group => 'venue', :limit => limit, :offset => offset)
        photos_fs = hash["items"].collect{|f| [f["id"], f["createdAt"], "#{f['prefix']}original#{f['suffix']}"]}   
        count = hash["count"].to_i
        p "count = #{count}"
        offset = offset+limit  
        p "photos count = #{photos_fs.count}"
        photos_fs.each do |fi| 
        	unless photo_ids.include?(fi[0])
        		p "adding photo... #{fi[0]}"
	    		data  = DateTime.strptime(fi[1].to_s,'%s')
	   		    p = self.photos.new(photo_foursquare_id: fi[0], remote_image_url: fi[2], date: data)
	       	 	p.save					
	        	new_photos+=1
	        else
	      		count = 0
	        end
        end
      end 
      new_photos
	end
end