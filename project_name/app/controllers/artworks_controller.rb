class ArtworksController < ApplicationController
     def index       
        render json: Artwork.all 
    end

    def show
        artwork = Artwork.find(params[:id])

        render json: artwork
    end

    def create
        artwork = Artwork.new(user_params)
        # debugger
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: 420
        end
    end

    def update
        artwork = Artwork.find(params[:id])

        if artwork.update(user_params)
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: 420
        end
    end

    def destroy
        artwork = Artwork.find(params[:id])

        artwork.destroy 
        render json: artwork
    end

    def new
        #method that displays new artwork html page
    end

    private

    def user_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end




end