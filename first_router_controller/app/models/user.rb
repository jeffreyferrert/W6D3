# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    # has_many :viewers,
    # foreign_key: :viewer_id,
    # class_name: :User

    # has_many :artworks, ##???????
    #     foreign_key: :artwork_id,
    #     class_name: :ArtworkShare

    # has_many :shared_artworks,
    #     through: :viewers,
    #     source: :artwork

    has_many :artworks, foreign_key: :artist_id
    has_many :artwork_shares, foreign_key: :viewer_id
    has_many :shared_artworks, through: :artwork_shares, source: :artwork
end
