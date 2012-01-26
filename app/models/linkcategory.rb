class Linkcategory < ActiveRecord::Base
  attr_accessible :name, :info
  
  validates :name,  :presence => true,
                    :uniqueness => { :case_sensitive => false }
end
