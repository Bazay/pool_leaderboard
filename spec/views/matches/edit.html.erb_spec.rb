require 'rails_helper'

RSpec.describe "matches/edit", type: :view do
  before(:each) do
    @match = assign(:match, Match.create!(
      :result => "MyString",
      :winner_id => 1,
      :loser_id => 1
    ))
  end

  it "renders the edit match form" do
    render

    assert_select "form[action=?][method=?]", match_path(@match), "post" do

      assert_select "input#match_result[name=?]", "match[result]"

      assert_select "input#match_winner_id[name=?]", "match[winner_id]"

      assert_select "input#match_loser_id[name=?]", "match[loser_id]"
    end
  end
end
