require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :round => 1,
      :pick => 1,
      :teamname => "MyString"
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path(@order), :method => "post" do
      assert_select "input#order_round", :name => "order[round]"
      assert_select "input#order_pick", :name => "order[pick]"
      assert_select "input#order_teamname", :name => "order[teamname]"
    end
  end
end
