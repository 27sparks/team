class Post
  include Mongoid::Document
  include Mongoid::Paperclip

  attr_accessible :title, :body, :image
  field :title, :type => String
  field :body, :type => String
  field :image_url, :type => String

  validates :title, :presence => true
  validates :body, :presence => true
  belongs_to :user
  has_mongoid_attached_file :image, :styles => { :slide => "720x400#", :medium => "240x240#", :team => "240x320#", :thumb => "100x100#" }

end
