require 'spec_helper'

describe Category do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  before(:each) do
      @attr = { :name => "Example Category", :info => "Info about Example Category" }
  end
  
  it "should create a new instance given valid attributes" do
      Category.create!(@attr)
  end
    
  it "should require a name" do
    category_without_name = Category.new(@attr.merge(:name => ""))
    category_without_name.should_not be_valid
  end
  
  it "should reject duplicate names" do
    Category.create!(@attr)
    category_with_duplicate_name = Category.new(@attr)
    category_with_duplicate_name.should_not be_valid
  end
  
end
