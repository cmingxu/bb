# == Schema Information
#
# Table name: alliance_memberships
#
#  id          :integer          not null, primary key
#  alliance_id :integer
#  state       :string
#  player_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AllianceMembership < ActiveRecord::Base
  belongs_to :alliance
  belongs_to :player
end
