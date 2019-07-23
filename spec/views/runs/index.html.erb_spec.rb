require 'rails_helper'

RSpec.describe "runs/index", type: :view do
  before(:each) do
    assign(:runs, [
      Run.create!(
        :distance => "Distance",
        :unit => "Unit",
        :time => "Time",
        :user_id => 2
      ),
      Run.create!(
        :distance => "Distance",
        :unit => "Unit",
        :time => "Time",
        :user_id => 2
      )
    ])
  end

  it "renders a list of runs" do
    render
    assert_select "tr>td", :text => "Distance".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
