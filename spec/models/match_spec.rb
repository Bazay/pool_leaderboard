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

require 'rails_helper'

RSpec.describe Match, type: :model do
  let(:players) { create_list :user, 2 }
  let(:match) { create :match, users: players }

  subject { match }

  its(:users) { is_expected.to eq players }
end
