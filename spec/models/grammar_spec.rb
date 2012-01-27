require 'spec_helper'

describe Grammar do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  before(:each) do
      @attr = { :name => "Example Grammar", :info => "Info about Example Grammar" }
  end
  
  it "should create a new instance given valid attributes" do
      Grammar.create!(@attr)
  end
    
  it "should require a name" do
    grammar_without_name = Grammar.new(@attr.merge(:name => ""))
    grammar_without_name.should_not be_valid
  end
  
  it "should reject duplicate names case insensitive" do
    Grammar.create!(@attr)
    grammar_with_duplicate_name = Grammar.new(@attr.merge(:name => "example grammar"))
    grammar_with_duplicate_name.should_not be_valid
  end
    
end