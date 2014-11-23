class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.string :photo_url
    	t.integer :party_id
    	t.integer :club_id
    	t.date :date

      t.timestamps
    end
  end
end
