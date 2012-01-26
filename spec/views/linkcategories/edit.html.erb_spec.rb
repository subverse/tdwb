require 'spec_helper'

describe "linkcategories/edit" do
  before(:each) do
    @linkcategory = assign(:linkcategory, stub_model(Linkcategory,
      :name => "MyString",
      :info => "MyText"
    ))
  end

  it "renders the edit linkcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => linkcategories_path(@linkcategory), :method => "post" do
      assert_select "input#linkcategory_name", :name => "linkcategory[name]"
      assert_select "textarea#linkcategory_info", :name => "linkcategory[info]"
    end
  end
end
