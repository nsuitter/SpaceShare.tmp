class Listing < ActiveRecord::Base

	validate :title, :presence => true
	validate :body, :presence => true
	validate :zip, :presence => true

end
