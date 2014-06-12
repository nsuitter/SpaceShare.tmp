class SearchesController < ApplicationController

	def index
		@match = Listing.where(:id => params[:id])
	end
end