require 'spec_helper'

describe Link do
    
  before(:each) do
      @linkcategory = Factory(:linkcategory)
      @attr = { :title => "Example Link", 
                :web =>   "www.elink.de",
                :info =>  "Info about Example Link" }
  end
  
  #create
  
  it "should create a new instance given valid attributes through relation with linkcategory" do
      @linkcategory.links.create!(@attr)
  end
    
  #title  
    
  it "should require a title" do
    link_without_title = Link.new(@attr.merge(:title => ""))
    link_without_title.should_not be_valid
  end
  
  it "should reject duplicate titles case insensitive" do
    @linkcategory.links.create!(@attr)
    link_with_duplicate_title = Link.new(@attr.merge(:title => "example link"))
    link_with_duplicate_title.should_not be_valid
  end

  
  #web
    
  it "should require a web" do
    link_without_web = Link.new(@attr.merge(:web => ""))
    link_without_web.should_not be_valid
  end
  
  it "should reject duplicate webs case insensitive" do
    @linkcategory.links.create!(@attr)
    link_with_duplicate_web = Link.new(@attr.merge(:web => "wWw.eLink.de"))
    link_with_duplicate_web.should_not be_valid
  end

  
  #linkcategory_id
    
  it "should require a linkcategory_id" do
    link_without_linkcategory_id = Link.new(@attr.merge(:linkcategory_id => ""))
    link_without_linkcategory_id.should_not be_valid
  end

  
  #assosiation: belongs_to :linkcategory
  
  describe "association with linkcategory" do

    before(:each) do      
      @link = @linkcategory.links.create!(@attr)
    end

    it "should have a linkcategory attribute" do
      @link.should respond_to(:linkcategory)
    end

    it "should be associated with the right linkcategory" do
      @link.linkcategory_id.should == @linkcategory.id
      @link.linkcategory.should == @linkcategory
    end    
    
  end# describe association with linkcategory
  
end# describe Link
