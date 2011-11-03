class Post
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes

  attr_accessible :title, :body, :image, :slideshow, :topnews, :image_url, :date_published
  field :title, :type => String
  field :body, :type => String
  field :image_url, :type => String
  field :user_id, :type => Integer
  field :slideshow, :type => Boolean 
  field :topnews, :type => Boolean 
  field :date_published, :type => Date
  
  validates :title, :presence => true
  validates :body, :presence => true
  belongs_to :user
  has_mongoid_attached_file :image, :styles => { :slide => "720x400#", :medium => "240x240#", :team => "240x320#", :thumb => "100x100#" }

end
