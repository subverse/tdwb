require 'spec_helper'

describe "vocs/index" do
  before(:each) do
    assign(:vocs, [
      stub_model(Voc,
        :german => "German",
        :wylie => "Wylie",
        :source_id => 1,
        :grammar_id => 1,
        :category_id => 1,
        :info => "MyText"
      ),
      stub_model(Voc,
        :german => "German",
        :wylie => "Wylie",
        :source_id => 1,
        :grammar_id => 1,
        :category_id => 1,
        :info => "MyText"
      )
    ])
  end

  it "renders a list of vocs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "German".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Wylie".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
