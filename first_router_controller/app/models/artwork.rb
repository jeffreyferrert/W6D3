# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true, uniqueness: true
    validates :artist_id, presence: true
    validates :title, uniqueness: {scope: :artist_id}   


    # belongs_to :artist,
    #     foreign_key: :artist_id,
    #     class_name: :User
        
    # has_many :viewers,
    # foreign_key: :viewer_id,
    # class_name: :User

    belongs_to :artist, class_name: 'User'
    has_many :artwork_shares
    has_many :shared_viewers, through: :artwork_shares, source: :viewer

    
    
end
