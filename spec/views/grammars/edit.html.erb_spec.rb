require 'spec_helper'

describe "grammars/edit" do
  before(:each) do
    @grammar = assign(:grammar, stub_model(Grammar,
      :name => "MyString",
      :info => "MyText"
    ))
  end

  it "renders the edit grammar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => grammars_path(@grammar), :method => "post" do
      assert_select "input#grammar_name", :name => "grammar[name]"
      assert_select "textarea#grammar_info", :name => "grammar[info]"
    end
  end
end
