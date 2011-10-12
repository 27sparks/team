class Rider < ActiveRecord::Base
	attr_accessible :name, :klasse, :description, :image
	validates :name, :presence => true

	mount_uploader :image, ImageUploader
end
