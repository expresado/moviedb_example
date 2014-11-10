class Movie < ActiveRecord::Base
  has_many :comments
  has_many :ratings

  validates_presence_of :name, :original_name, :director, :year
  validates :year, numericality: { only_integer: true, greater_than: 1800 }

  has_attached_file :image,
    :styles => {
      :medium => "300x300>",
      :thumb =>  "100x100>"
  },
  :default_url => "missing.png"


  validates_attachment_content_type :image,
    :content_type => /\Aimage\/.*\Z/
end
