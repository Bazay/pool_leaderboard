require 'rails_helper'

RSpec.describe "matches/show", type: :view do
  before(:each) do
    @match = assign(:match, Match.create!(
      :result => "Result",
      :winner_id => 1,
      :loser_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Result/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
