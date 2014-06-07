class Listing < ActiveRecord::Base

	validates :title, :presence => true
	validates :body, :presence => true
	validates :zip, :presence => true

end
