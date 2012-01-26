require 'spec_helper'

describe "grammars/index" do
  before(:each) do
    assign(:grammars, [
      stub_model(Grammar,
        :name => "Name",
        :info => "MyText"
      ),
      stub_model(Grammar,
        :name => "Name",
        :info => "MyText"
      )
    ])
  end

  it "renders a list of grammars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
