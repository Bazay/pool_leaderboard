# == Schema Information
#
# Table name: match_participations
#
#  id           :integer          not null, primary key
#  match_id     :integer
#  user_id      :integer
#  cached_score :decimal(, )
#  result       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :match_participation do
    match
    user
    cached_score 100.0
    result nil
  end
end
