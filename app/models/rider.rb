class Rider
  include Mongoid::Document
  include Mongoid::Paperclip

  attr_accessible :name, :klasse, :description, :image
  validates :name, :presence => true

  has_mongoid_attached_file :image
end
