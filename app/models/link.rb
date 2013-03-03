class Link < ActiveRecord::Base
  attr_accessible :name, :title, :url

  validates_uniqueness_of :url
end
