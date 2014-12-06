class RemovePhotoId < ActiveRecord::Migration
  def change
  	remove_column :photos, :party_id, :integer
  	add_index :photos, :date
  end
end
