require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :round => 1,
        :pick => 2,
        :teamname => "Teamname"
      ),
      stub_model(Order,
        :round => 1,
        :pick => 2,
        :teamname => "Teamname"
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Teamname".to_s, :count => 2
  end
end
