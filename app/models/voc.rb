class Voc < ActiveRecord::Base
  belongs_to :source
  belongs_to :grammar
  belongs_to :category
  
  attr_accessible :german, :wylie, :info, :source_id, :grammar_id, :category_id
  
  validates :german, :presence => true                      
  validates :wylie,  :presence => true

  validate :german_wylie_pair_must_be_unique => { :on => :create }
  
  private

  def german_wylie_pair_must_be_unique    
    return if german.blank? or wylie.blank?
    existing_pair = self.class.find(:first, :conditions => ["german = ? AND wylie = ?", self.german, self.wylie])    
    if existing_pair != nil 
      if existing_pair.german == self.german and existing_pair.wylie == self.wylie            
        errors.add(:german, :taken)
        errors.add(:wylie, :taken)      
      end
    end
  end# german_wylie_pair_must_be_unique        
    
end# Voc