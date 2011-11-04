class Post
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongoid::Timestamps
  include Mongoid::MultiParameterAttributes

  attr_accessible :title, :body, :image, :first_image_tag, :second_image, :second_image_tag, :slideshow, :topnews, :image_url, :date_published
  field :title
  field :body
  field :image
  field :first_image_tag
  field :user_id, :type => Integer
  field :slideshow, :type => Boolean 
  field :topnews, :type => Boolean 
  field :date_published, :type => Date
  field :second_image
  field :second_image_tag
  
  validates :title, :presence => true
  validates :body, :presence => true
  belongs_to :user
  has_mongoid_attached_file :image, :styles => { :slide => "720x400#", :medium => "240x240#", :team => "240x320#", :thumb => "80x80#" }
  has_mongoid_attached_file :second_image, :styles => { :slide => "720x400#", :medium => "240x240#", :team => "240x320#", :thumb => "80x80#" }

end
