require 'spec_helper'

describe "vocs/show" do
  before(:each) do
    @voc = assign(:voc, stub_model(Voc,
      :german => "German",
      :wylie => "Wylie",
      :source_id => 1,
      :grammar_id => 1,
      :category_id => 1,
      :info => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/German/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Wylie/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
