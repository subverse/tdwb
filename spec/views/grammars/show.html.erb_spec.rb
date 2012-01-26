require 'spec_helper'

describe "grammars/show" do
  before(:each) do
    @grammar = assign(:grammar, stub_model(Grammar,
      :name => "Name",
      :info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
