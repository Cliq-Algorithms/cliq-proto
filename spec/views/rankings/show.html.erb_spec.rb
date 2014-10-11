require 'spec_helper'

describe "rankings/show.html.erb" do
  before(:each) do
    @ranking = assign(:ranking, stub_model(Ranking,
      :assigner => 1,
      :ranking => 1,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
