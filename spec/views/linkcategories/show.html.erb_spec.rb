require 'spec_helper'

describe "linkcategories/show" do
  before(:each) do
    @linkcategory = assign(:linkcategory, stub_model(Linkcategory,
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
