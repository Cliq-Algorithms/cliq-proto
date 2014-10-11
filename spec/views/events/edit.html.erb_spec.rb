require 'spec_helper'

describe "events/edit.html.erb" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :creator => 1,
      :category => "MyString",
      :size => ""
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_creator", :name => "event[creator]"
      assert_select "input#event_category", :name => "event[category]"
      assert_select "input#event_size", :name => "event[size]"
    end
  end
end
