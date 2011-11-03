class Rider
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::MultiParameterAttributes
  
    attr_accessible :name, :klasse, :verein, :geburtstag, :description, :image, :team


  field :name
  field :klasse
  field :verein
  field :description
  field :image
  field :team
  field :geburtstag, :type => Date

  validates :name, :presence => true

  has_mongoid_attached_file :image, :styles => { :medium => "220x280#", :team => "160x240#", :thumb => "100x100#" }
end
