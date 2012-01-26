require 'spec_helper'

describe Linkcategory do
    
  before(:each) do
    @attr = { :name => "Example Linkcategory", :info => "Info about Example Linkcategory" }
  end
  
  it "should create a new instance given valid attributes" do
    Linkcategory.create!(@attr)
  end
    
  it "should require a name" do
    linkcategory_without_name = Linkcategory.new(@attr.merge(:name => ""))
    linkcategory_without_name.should_not be_valid
  end
  
  it "should reject duplicate names case insensitive" do
    Linkcategory.create!(@attr)
    linkcategory_with_duplicate_name = Linkcategory.new(@attr.merge(:name => "example linkCategory"))
    linkcategory_with_duplicate_name.should_not be_valid
  end
  
  #assosiation: has_many :links
  
  describe "association with links" do

    before(:each) do            
      @linkcategory = Linkcategory.create!(@attr)
      @link1 = Factory(:link, :linkcategory => @linkcategory)
      @link2 = Factory(:link, :linkcategory => @linkcategory)      
    end

    it "should have a links attribute" do
      @linkcategory.should respond_to(:links)
    end

    it "should have many links" do
      @linkcategory.links.include?(@link1).should be_true
      @linkcategory.links.include?(@link2).should be_true
    end
    
  end# describe association with links
end# Linkcategory 
