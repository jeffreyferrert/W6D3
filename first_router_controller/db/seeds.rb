# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create Users
User.create(username: 'user1')
User.create(username: 'user2')

# Create Artworks
user1 = User.find_by(username: 'user1')
user2 = User.find_by(username: 'user2')

Artwork.create(title: 'Artwork 1', image_url: 'image1.jpg', artist: user1)
Artwork.create(title: 'Artwork 2', image_url: 'image2.jpg', artist: user2)

# Create ArtworkShares
artwork1 = Artwork.find_by(title: 'Artwork 1')
artwork2 = Artwork.find_by(title: 'Artwork 2')

ArtworkShare.create(artwork: artwork1, viewer: user2)
ArtworkShare.create(artwork: artwork2, viewer: user1)