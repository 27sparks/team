class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  attr_accessible :name, :password, :password_confirmation
  field :name, :type => String
  field :password_digest, :type => String

  has_secure_password
  validates_presence_of :password, :on => :create
  has_many :posts
end
