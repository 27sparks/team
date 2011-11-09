class Rider
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::MultiParameterAttributes
  
    attr_accessible :name, :first_name, :klasse, :verein, :geburtstag, :description, :image, :team, :order 


  field :name
  field :first_name
  field :klasse
  field :verein
  field :description
  field :image
  field :team
  field :order, :type => Integer
  field :geburtstag, :type => Date
  
  key :first_name, :name
  
  validates :name, :presence => true
  validates :first_name, :presence => true
  validates :image, :presence => true

  has_mongoid_attached_file :image, :styles => { :medium => "220x280#", :team => "160x240#", :thumb => "100x100#" }
end
