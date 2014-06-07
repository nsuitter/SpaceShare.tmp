class ListingsController < ApplicationController


	
	def index
		@listings = Listing.all
	end

	def new
		@listing = Listing.new 
		3.times {  @listing.photos.build  }
	end

	def create
		@listing = Listing.new(params[:listing].permit(:title, :body, :zip, :photo_attributes))

		if @listing.valid? and @listing.save
			redirect_to listings_path
		else 
			render :action => :new
		end
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def photo_params
	  params.require(:photo).permit(:picture)
	end

end
