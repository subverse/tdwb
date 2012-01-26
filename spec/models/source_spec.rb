require 'spec_helper'

describe Source do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  before(:each) do
      @attr = { :name =>  "Example Source", 
                :code =>  "esrc",
                :web =>   "www.esrc.com",
                :info => "Info about Example Source" }
  end
  
  it "should create a new instance given valid attributes" do
      Source.create!(@attr)
  end
  
  #test name: present, unique
    
  it "should require a name" do
    source_without_name = Source.new(@attr.merge(:name => ""))
    source_without_name.should_not be_valid
  end
  
  it "should reject duplicate names case sensitive" do
    Source.create!(@attr)
    source_with_duplicate_name = Source.new(@attr.merge(:name => "example source"))
    source_with_duplicate_name.should_not be_valid
  end
  
  #test code: present, unique, length limited
  
  it "should require a code" do
    source_without_code = Source.new(@attr.merge(:code => ""))
    source_without_code.should_not be_valid
  end
  
  it "should reject duplicate codes case sensitive" do
    Source.create!(@attr)
    source_with_duplicate_code = Source.new(@attr.merge(:code => "eSrc"))
    source_with_duplicate_code.should_not be_valid
  end
  
  it "should reject codes shorter than 2 and longer than 5 characters" do
    source_with_duplicate_code = Source.new(@attr.merge(:code => "e"))
    source_with_duplicate_code.should_not be_valid    
    source_with_duplicate_code = Source.new(@attr.merge(:code => "eSrc56"))
    source_with_duplicate_code.should_not be_valid
  end
  
  it "should reject duplicate web" do
      Source.create!(@attr)
      source_with_duplicate_web = Source.new(@attr.merge(:name => "WWW.eSrC.com"))
      source_with_duplicate_web.should_not be_valid
  end
  
end #describe Source
