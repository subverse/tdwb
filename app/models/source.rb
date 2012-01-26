class Source < ActiveRecord::Base
  attr_accessible :name, :code, :web, :info
  
  validates :name,  :presence => true,
                    :uniqueness => { :case_sensitive => false }
  validates :code,  :presence => true,
                    :uniqueness => { :case_sensitive => false } 
                    #:length => { :in => 2..5 }
  validates :web,   :uniqueness => true                             
end
