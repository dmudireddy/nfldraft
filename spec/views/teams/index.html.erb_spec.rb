require 'spec_helper'

describe "teams/index" do
  before(:each) do
    assign(:teams, [
      stub_model(Team,
        :teamname => "Teamname",
        :division => "Division"
      ),
      stub_model(Team,
        :teamname => "Teamname",
        :division => "Division"
      )
    ])
  end

  it "renders a list of teams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Teamname".to_s, :count => 2
    assert_select "tr>td", :text => "Division".to_s, :count => 2
  end
end
