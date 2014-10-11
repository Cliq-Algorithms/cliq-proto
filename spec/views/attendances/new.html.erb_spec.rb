require 'spec_helper'

describe "attendances/new.html.erb" do
  before(:each) do
    assign(:attendance, stub_model(Attendance,
      :user => nil,
      :event => nil
    ).as_new_record)
  end

  it "renders new attendance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attendances_path, :method => "post" do
      assert_select "input#attendance_user", :name => "attendance[user]"
      assert_select "input#attendance_event", :name => "attendance[event]"
    end
  end
end
