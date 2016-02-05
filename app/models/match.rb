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

class Match < ActiveRecord::Base
  extend Enumerize

  has_many :match_participations
  has_and_belongs_to_many :users, through: :match_participations

  enumerize :status, in: %w(not_played played), predicates: true
end
