require 'spec_helper'

describe "sources/edit" do
  before(:each) do
    @source = assign(:source, stub_model(Source,
      :name => "MyString",
      :code => "MyString",
      :web => "MyString",
      :info => "MyText"
    ))
  end

  it "renders the edit source form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sources_path(@source), :method => "post" do
      assert_select "input#source_name", :name => "source[name]"
      assert_select "input#source_code", :name => "source[code]"
      assert_select "input#source_web", :name => "source[web]"
      assert_select "textarea#source_info", :name => "source[info]"
    end
  end
end
