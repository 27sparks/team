class Post < ActiveRecord::Base
	attr_accessible :title, :body, :image
	validates :title, :presence => true
	validates :body, :presence => true
	mount_uploader :image, ImageUploader

end
