class Artwork < ApplicationRecord
    validates :title, :image_url, :artist_id, presence: true

    belongs_to :artist,
        class_name: :User,
        foreign_key: :artist_id
    
    has_many :shares,
        class_name: :ArtWorkSharing,
        foreign_key: :artwork_id

    has_many :shared_viewers,
        through: :shares,
        source: :user
end