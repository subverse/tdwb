class Category < ActiveRecord::Base  
  has_many :vocs
  
  attr_accessible :name, :info
  
  validates :name,  :presence => true,
                    :uniqueness => { :case_sensitive => false }  
end
