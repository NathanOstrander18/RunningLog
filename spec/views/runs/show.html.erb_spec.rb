require 'rails_helper'

RSpec.describe "runs/show", type: :view do
  before(:each) do
    @run = assign(:run, Run.create!(
      :distance => "Distance",
      :unit => "Unit",
      :time => "Time",
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Distance/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/2/)
  end
end
