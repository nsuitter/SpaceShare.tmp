class Listing < ActiveRecord::Base

	has_many :photos
	
	validates :title, :presence => true
	validates :body, :presence => true
	validates :zip, :presence => true

end
