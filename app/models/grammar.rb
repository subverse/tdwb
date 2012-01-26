class Grammar < ActiveRecord::Base  
  attr_accessible :name, :info
  
  validates :name,  :presence => true,
                    :uniqueness => true  
end
