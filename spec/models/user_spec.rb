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

require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class }

  describe 'associations' do
    subject { described_class.reflect_on_association(association) }

    context 'when matches' do
      let(:association) { :matches }

      its(:macro) { is_expected.to eq :has_many }
    end

    context 'when match_invitations' do
      let(:association) { :matches }

      its(:macro) { is_expected.to eq :has_many }
    end

    describe 'instances' do
      describe 'match results' do
        let(:user) { create :user_with_matches, matches_won: 5, matches_lost: 2 }

        subject { user.matches }

        its(:count) { is_expected.to eq 7 }

        context 'wins' do
          let(:matches_won) { user.match_participations.won }

          subject { matches_won }

          its(:count) { is_expected.to eq 5 }
        end
      end
    end
  end
end
