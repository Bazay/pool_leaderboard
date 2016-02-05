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

require 'rails_helper'

RSpec.describe MatchParticipation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
