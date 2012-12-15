require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :round => 1,
      :pick => 1,
      :teamname => "MyString"
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_round", :name => "order[round]"
      assert_select "input#order_pick", :name => "order[pick]"
      assert_select "input#order_teamname", :name => "order[teamname]"
    end
  end
end
