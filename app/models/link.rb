class Link < ActiveRecord::Base
  belongs_to :linkcategory
  
  attr_accessible :title, :web, :linkcategory_id, :info
      
  validates :title, :presence => true,
                    :uniqueness => { :case_sensitive => false }
  validates :web,   :presence => true,
                    :uniqueness => { :case_sensitive => false }
  validates :linkcategory_id, :presence => true
end
