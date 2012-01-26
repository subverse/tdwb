require 'spec_helper'

describe "links/new" do
  before(:each) do
    assign(:link, stub_model(Link,
      :title => "MyString",
      :web => "MyString",
      :linkcategory_id => 1
    ).as_new_record)
  end

  it "renders new link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path, :method => "post" do
      assert_select "input#link_title", :name => "link[title]"
      assert_select "input#link_web", :name => "link[web]"
      assert_select "input#link_linkcategory_id", :name => "link[linkcategory_id]"
    end
  end
end
