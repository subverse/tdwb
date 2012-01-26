require 'spec_helper'

describe Linkcategory do
  #pending "add some examples to (or delete) #{__FILE__}"
  
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
  
  it "should have many links"
end
