class ArtworksharingsController < ApplicationController

    def create
        # debugger
        artworksharing = ArtWorkSharing.new(user_params)
        if artworksharing.save
            render json: artworksharing
        else
            render json: artworksharing.errors.full_messages, status: 420
        end
    end

    def destroy
        artworksharing = ArtWorkSharing.find(params[:id])

        artworksharing.destroy 
        render json: artworksharing
    end
    
    private
    
    def user_params
        params.require(:banana).permit(:artwork_id, :viewer_id)
    end


end