class Addcolumn < ActiveRecord::Migration
  def change
  	add_column :photos, :photo_foursquare_id, :string
  end
end
