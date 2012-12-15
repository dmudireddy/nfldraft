require 'spec_helper'

describe "players/index" do
  before(:each) do
    assign(:players, [
      stub_model(Player,
        :playername => "Playername",
        :position => "Position"
      ),
      stub_model(Player,
        :playername => "Playername",
        :position => "Position"
      )
    ])
  end

  it "renders a list of players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Playername".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
  end
end
