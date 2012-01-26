class Link < ActiveRecord::Base
  belongs_to :linkcategory
  
  attr_accessible :title, :web, :info, :linkcategory_id
      
  validates :title, :presence => true,
                    :uniqueness => { :case_sensitive => false }
  validates :web,   :presence => true,
                    :uniqueness => { :case_sensitive => false }
  validates :linkcategory_id, :presence => true
end
