class Linkcategory < ActiveRecord::Base
  has_many :links
  
  attr_accessible :name, :info
  
  validates :name,  :presence => true,
                    :uniqueness => { :case_sensitive => false }
end
