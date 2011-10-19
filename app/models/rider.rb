class Rider
  include Mongoid::Document
  include Mongoid::Paperclip
  
  field :name, :type => String
  field :klasse, :type => String
  field :verein, :type => String
  field :geburtstag, :type => String
  field :description, :type => String
  field :image, :type => String


  attr_accessible :name, :klasse, :verein, :geburtstag, :description, :image
  validates :name, :presence => true

  has_mongoid_attached_file :image, :styles => { :back => "720x600#", :medium => "240x320#", :team => "160x240#", :thumb => "100x100#" },
                                    :convert_options => { :back => '-colorspace Gray -blur 0x8'}
end
