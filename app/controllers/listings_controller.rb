class ListingsController < ApplicationController


	
	def index
		@listings = Listing.all
	end

	def new
		@listing = Listing.new 
	    @listing.photos.build
	end

	def create
		@listing = Listing.new( listing_params )

		if @listing.valid? and @listing.save
			redirect_to listings_path
		else 
			render :action => :new
		end
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def listing_params
	  params.require(:listing).permit(:title, :body, :zip, photos_attributes: [:picture, :listing_id])
	end

end
