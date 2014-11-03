class User < ActiveRecord::Base
  has_many :comments
  has_many :ratings

  validates_format_of :email, :with => /@/
end
