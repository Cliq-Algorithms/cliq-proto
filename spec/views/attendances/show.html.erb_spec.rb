require 'spec_helper'

describe "attendances/show.html.erb" do
  before(:each) do
    @attendance = assign(:attendance, stub_model(Attendance,
      :user => nil,
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
