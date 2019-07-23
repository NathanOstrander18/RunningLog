require 'rails_helper'

RSpec.describe "runs/edit", type: :view do
  before(:each) do
    @run = assign(:run, Run.create!(
      :distance => "MyString",
      :unit => "MyString",
      :time => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit run form" do
    render

    assert_select "form[action=?][method=?]", run_path(@run), "post" do

      assert_select "input[name=?]", "run[distance]"

      assert_select "input[name=?]", "run[unit]"

      assert_select "input[name=?]", "run[time]"

      assert_select "input[name=?]", "run[user_id]"
    end
  end
end
