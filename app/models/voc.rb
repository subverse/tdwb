class Voc < ActiveRecord::Base
  belongs_to :source
  belongs_to :grammar
  belongs_to :category
  
  attr_accessible :german, :wylie, :info, :source_id, :grammar_id, :category_id
  
  validates :german,  :presence => true   
  validates :wylie,   :presence => true
  
end  
