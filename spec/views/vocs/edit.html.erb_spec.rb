require 'spec_helper'

describe "vocs/edit" do
  before(:each) do
    @voc = assign(:voc, stub_model(Voc,
      :german => "MyString",
      :wylie => "MyString",
      :source_id => 1,
      :grammar_id => 1,
      :category_id => 1,
      :info => "MyText"
    ))
  end

  it "renders the edit voc form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vocs_path(@voc), :method => "post" do
      assert_select "input#voc_german", :name => "voc[german]"
      assert_select "input#voc_wylie", :name => "voc[wylie]"
      assert_select "input#voc_source_id", :name => "voc[source_id]"
      assert_select "input#voc_grammar_id", :name => "voc[grammar_id]"
      assert_select "input#voc_category_id", :name => "voc[category_id]"
      assert_select "textarea#voc_info", :name => "voc[info]"
    end
  end
end
