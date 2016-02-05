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

class MatchParticipation < ActiveRecord::Base
  belongs_to :match
  belongs_to :user

  scope :won, -> { where(result: 'won') }
  scope :lost, -> { where(result: 'lost') }
end
