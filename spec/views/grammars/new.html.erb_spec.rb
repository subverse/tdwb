require 'spec_helper'

describe "grammars/new" do
  before(:each) do
    assign(:grammar, stub_model(Grammar,
      :name => "MyString",
      :info => "MyText"
    ).as_new_record)
  end

  it "renders new grammar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => grammars_path, :method => "post" do
      assert_select "input#grammar_name", :name => "grammar[name]"
      assert_select "textarea#grammar_info", :name => "grammar[info]"
    end
  end
end
