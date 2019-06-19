class ArtWorkSharing < ApplicationRecord
    validates :artwork_id, :viewer_id, presence: true
    
    belongs_to :artwork,
        class_name: :Artwork,
        foreign_key: :artwork_id,
        primary_key: :id

    belongs_to :user,
        class_name: :User,
        foreign_key: :viewer_id

    
end