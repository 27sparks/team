class Gallery
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes

  attr_accessible :image, :description
  
  field :image
  field :description

  validates :image, :presence => true
  validates :description, :presence => true

  has_mongoid_attached_file :image, :styles => { :medium => "220x280#", :slide => "720x400#", :thumb => "100x100#" }
end
