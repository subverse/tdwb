require 'spec_helper'

describe Voc do
  
  before(:each) do
      @attr = { :german => "german", 
                :wylie => "wy li e",
                :source_id => 1,
                :grammar_id => 1,
                :category_id => 1,                                
                :info => "Some Info" }
  end
  

  it "should create a new instance given valid attributes" do
      Voc.create!(@attr)
  end

  
  #test german: present
    
  it "should require german" do
    voc_without_german = Voc.new(@attr.merge(:german => ""))
    voc_without_german.should_not be_valid
  end

  
  #test wylie: present
    
  it "should require wylie" do
    voc_without_wylie = Voc.new(@attr.merge(:wylie => ""))
    voc_without_wylie.should_not be_valid
  end
 

  #test pair of german and wylie: unique
 
  it "should reject duplicate pair of german and wylie" do    
    voc = Voc.create!(@attr)
    
    voc_with_duplicate_pair = Voc.new(@attr.merge(:german => "german", :wylie => "wy li e"))
    voc_with_duplicate_pair.should_not be_valid
    
    voc_with_single_german = Voc.new(@attr.merge(:german => "ger man", :wylie => "wy li e"))
    voc_with_single_german.should be_valid
   
    voc_with_single_wylie = Voc.new(@attr.merge(:german => "german", :wylie => "wy lie"))
    voc_with_single_wylie.should be_valid
    
    voc_with_single_wylie = Voc.new(@attr.merge(:german => "german", :wylie => "Wy li E"))
    voc_with_single_wylie.should be_valid
  end  

  #associations: belongs_to: category, grammar, source; has_many :vocs
  
  describe "associations of voc, categories, grammars, sources" do

    before(:each) do      
      @category = Factory(:category)
      @grammar = Factory(:grammar)
      @source = Factory(:source)
      @voc1 = Factory(:voc, :category => @category, :grammar => @grammar, :source => @source)
      @voc2 = Factory(:voc, :category => @category, :grammar => @grammar, :source => @source)
    end

    #category

    it "should have a category attribute" do
      @voc1.should respond_to(:category)
    end
  
    it "should be associated with the right category" do
      @voc1.category_id.should == @category.id
      @voc1.category.should == @category
    end
 
    it "should have a vocs attribute" do
      @category.should respond_to(:vocs)
    end

    it "should have many vocs" do
      @category.vocs.include?(@voc1).should be_true
      @category.vocs.include?(@voc2).should be_true
      @category.vocs.length.should == 2
    end

    #grammar

    it "should have a grammar attribute" do
      @voc1.should respond_to(:grammar)
    end

    it "should be associated with the right grammar" do
      @voc1.grammar_id.should == @grammar.id
      @voc1.grammar.should == @grammar
    end

    it "should have a vocs attribute" do
      @grammar.should respond_to(:vocs)
    end

    it "should have many vocs" do
      @grammar.vocs.include?(@voc1).should be_true
      @grammar.vocs.include?(@voc2).should be_true
      @grammar.vocs.length.should == 2
    end

    #source

    it "should have a source attribute" do
      @voc1.should respond_to(:source)
    end

    it "should be associated with the right source" do
      @voc1.source_id.should == @source.id
      @voc1.source.should == @source
    end
    
    it "source should have a vocs attribute" do
      @source.should respond_to(:vocs)
    end
    
    it "source should have many vocs" do
      @source.vocs.include?(@voc1).should be_true
      @source.vocs.include?(@voc2).should be_true
      @source.vocs.length.should == 2
    end

  end# associations of voc, categories, grammars, sources

end# describe Voc
