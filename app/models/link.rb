class Link < ActiveRecord::Base
  attr_accessible :name, :title, :url

  validates_uniqueness_of :url

  scope :search, lambda { |phrase|  
    if connection.adapter_name == 'PostgreSQL'
      where("name ilike ?", "%#{phrase}%")
    else
      where("name like ?", "%#{phrase}%")
    end
  }
end
