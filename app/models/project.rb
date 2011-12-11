class Project < ActiveRecord::Base
  has_many :posts
  validates :title, :description, :image_url, :trailer_url, :presence => true
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => 'must be a URL for GIF, JPG or PNG image.'
  }
  validates :title, :uniqueness => true
end
