require 'spec_helper'

describe "linkcategories/new" do
  before(:each) do
    assign(:linkcategory, stub_model(Linkcategory,
      :name => "MyString",
      :info => "MyText"
    ).as_new_record)
  end

  it "renders new linkcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => linkcategories_path, :method => "post" do
      assert_select "input#linkcategory_name", :name => "linkcategory[name]"
      assert_select "textarea#linkcategory_info", :name => "linkcategory[info]"
    end
  end
end
