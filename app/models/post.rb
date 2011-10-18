class Post
  include Mongoid::Document
  include Mongoid::Paperclip

  attr_accessible :title, :body, :image
  field :title, :type => String
  field :body, :type => String
  field :image_url, :type => String

  validates :title, :presence => true
  validates :body, :presence => true
  has_mongoid_attached_file :image, :styles => { :slide => "720x400", :medium => "300x300>", :thumb => "100x100>" }
end
