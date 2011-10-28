class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  attr_accessible :name, :admin, :author, :password, :password_confirmation

  field :name, :type => String
  field :password_digest, :type => String
  field :admin, :type => Boolean
  field :author, :type => Boolean

  has_secure_password
  validates_presence_of :password, :on => :create
  has_many :posts
end
