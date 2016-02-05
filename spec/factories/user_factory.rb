# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string
#  first_name             :string
#  last_name              :string
#

FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    username { Faker::Internet.user_name }
    email { Faker::Internet.email }
    password 'password'
    password_confirmation 'password'

    factory :user_with_matches do
      transient do
        matches_won 1
        matches_lost 1
      end

      after(:create) do |user, evaluator|
        create_list :match_participation,
          evaluator.matches_won,
          result: 'won',
          user: user,
          match: create(:played_match)
        create_list :match_participation,
          evaluator.matches_lost,
          result: 'lost',
          user: user,
          match: create(:played_match)
      end
    end
  end
end
