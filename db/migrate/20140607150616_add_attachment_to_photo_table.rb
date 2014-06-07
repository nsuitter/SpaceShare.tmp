class AddAttachmentToPhotoTable < ActiveRecord::Migration
  def change
  	add_attachment :photos, :picture
  end
end
