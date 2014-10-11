require 'spec_helper'

describe "attendances/edit.html.erb" do
  before(:each) do
    @attendance = assign(:attendance, stub_model(Attendance,
      :user => nil,
      :event => nil
    ))
  end

  it "renders the edit attendance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attendances_path(@attendance), :method => "post" do
      assert_select "input#attendance_user", :name => "attendance[user]"
      assert_select "input#attendance_event", :name => "attendance[event]"
    end
  end
end
