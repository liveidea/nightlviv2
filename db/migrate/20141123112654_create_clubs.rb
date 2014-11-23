class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
    	t.string :name
    	t.string :address
    	t.text :about
    	t.integer :photo_id
    	t.string :forsquare_id

      t.timestamps
    end
  end
end
