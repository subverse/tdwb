class Source < ActiveRecord::Base
  has_many :vocs
  
  attr_accessible :name, :code, :web, :info

  validates :name,  :presence => true,
                    :uniqueness => { :case_sensitive => false }
  validates :code,  :presence => true,
                    :uniqueness => { :case_sensitive => false },
                    :length => { :minimum => 2, :maximum => 5 }                     
  validates :web,   :uniqueness => true                             
end
