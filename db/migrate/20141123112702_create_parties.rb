class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
    	t.string :name
    	t.date :date
    	t.integer :price
    	t.text :about
    	t.integer :club_id

      t.timestamps
    end
  end
end
