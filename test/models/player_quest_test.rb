# == Schema Information
#
# Table name: player_quests
#
#  id         :integer          not null, primary key
#  name       :string
#  state      :string
#  claimed_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PlayerQuestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
