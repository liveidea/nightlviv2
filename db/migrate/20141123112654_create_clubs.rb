class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
    	t.string :name
    	t.string :name
    	t.text :about
    	t.integer :photo_id
    	t.integer :id_forsqere

      t.timestamps
    end
  end
end
