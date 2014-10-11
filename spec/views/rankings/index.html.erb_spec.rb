require 'spec_helper'

describe "rankings/index.html.erb" do
  before(:each) do
    assign(:rankings, [
      stub_model(Ranking,
        :assigner => 1,
        :ranking => 1,
        :user => nil
      ),
      stub_model(Ranking,
        :assigner => 1,
        :ranking => 1,
        :user => nil
      )
    ])
  end

  it "renders a list of rankings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
