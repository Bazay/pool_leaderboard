# == Schema Information
#
# Table name: matches
#
#  id         :integer          not null, primary key
#  status     :string           default("not_played")
#  played_at  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :match do
    status 'not_played'
    played_at nil

    factory :played_match do
      status 'played'
      played_at Time.current
    end
  end
end
