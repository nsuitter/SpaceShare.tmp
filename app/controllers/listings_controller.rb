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

end
