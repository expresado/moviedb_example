class Movie < ActiveRecord::Base
  has_many :comments
  has_many :ratings

  validates_presence_of :name, :original_name, :director, :year
  validates :year, numericality: { only_integer: true, greater_than: 1800 }
end
