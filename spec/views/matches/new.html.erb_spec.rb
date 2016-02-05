require 'rails_helper'

RSpec.describe "matches/new", type: :view do
  before(:each) do
    assign(:match, Match.new(
      :result => "MyString",
      :winner_id => 1,
      :loser_id => 1
    ))
  end

  it "renders new match form" do
    render

    assert_select "form[action=?][method=?]", matches_path, "post" do

      assert_select "input#match_result[name=?]", "match[result]"

      assert_select "input#match_winner_id[name=?]", "match[winner_id]"

      assert_select "input#match_loser_id[name=?]", "match[loser_id]"
    end
  end
end
