class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title, null: false 
      t.string :image_url, null: false
      t.string :artist_id, null: false, index: true 

      t.timestamps
    end
  end
end
