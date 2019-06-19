class User < ApplicationRecord
  validates :username, presence: true
  
    has_many :artworks,
      class_name: :Artwork,
      foreign_key: :artwork_id

    has_many :viewed_artworks,
      class_name: :ArtWorkSharing,
      foreign_key: :viewer_id

    has_many :shared_artworks,
      through: :viewed_artworks,
      source: :artwork

end