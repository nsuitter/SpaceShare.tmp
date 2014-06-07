class Photo < ActiveRecord::Base
	belongs_to :listing

  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :url => "/photos/listings/:id/:basename.:extension", :path => ":rails_root/public/photos/listings/:id/:basename.:extension"


  validates_attachment_content_type :picture, :content_type => /\Aimage/
# Validate filename
  validates_attachment_file_name :picture, :matches => [/png\Z/, /jpe?g\Z/]
# Explicitly do not validate
  do_not_validate_attachment_file_type :picture

end
