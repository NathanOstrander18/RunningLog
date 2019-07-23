require 'rails_helper'

RSpec.describe "runs/new", type: :view do
  before(:each) do
    assign(:run, Run.new(
      :distance => "MyString",
      :unit => "MyString",
      :time => "MyString",
      :user_id => 1
    ))
  end

  it "renders new run form" do
    render

    assert_select "form[action=?][method=?]", runs_path, "post" do

      assert_select "input[name=?]", "run[distance]"

      assert_select "input[name=?]", "run[unit]"

      assert_select "input[name=?]", "run[time]"

      assert_select "input[name=?]", "run[user_id]"
    end
  end
end
