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

require 'test_helper'

class AllianceMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
