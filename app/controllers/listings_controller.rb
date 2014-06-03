class ListingsController < ApplicationController


	
	def index
		@listings = Listing.all
	end

	def new
		@listing = Listing.new
	end

	def create
		@listing = Listing.new(params[:listing].permit(:title, :body, :zip))

		if @listing.valid? and @listing.save
			redirect_to listings_path
		else 
			render :action => :new
		end
	end

end
