class Source < ActiveRecord::Base
  attr_accessible :name, :code, :web, :info
  
  validates :name,  :presence => true,
                    :uniqueness => true
  validates :code,  :presence => true,
                    :uniqueness => true
                    #:length => { :in => 2..5 }
  validates :web,   :uniqueness => true                             
end
