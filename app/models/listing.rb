class Listing < ActiveRecord::Base

	has_many :photos

	accepts_nested_attributes_for :photos
	
	validates :title, :presence => true
	validates :body, :presence => true
	validates :zip, :presence => true


end
