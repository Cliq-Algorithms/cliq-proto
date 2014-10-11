require 'spec_helper'

describe "rankings/edit.html.erb" do
  before(:each) do
    @ranking = assign(:ranking, stub_model(Ranking,
      :assigner => 1,
      :ranking => 1,
      :user => nil
    ))
  end

  it "renders the edit ranking form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rankings_path(@ranking), :method => "post" do
      assert_select "input#ranking_assigner", :name => "ranking[assigner]"
      assert_select "input#ranking_ranking", :name => "ranking[ranking]"
      assert_select "input#ranking_user", :name => "ranking[user]"
    end
  end
end
