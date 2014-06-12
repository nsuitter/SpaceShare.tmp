class PhotosController < ApplicationController

	def index
		@photos = Photo.where(:listing_id => params[:id])
		render json: @photos
	end
end