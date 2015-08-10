# == Schema Information
#
# Table name: alliances
#
#  id           :integer          not null, primary key
#  name         :string
#  member_count :integer
#  created_by   :integer
#  state        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class AllianceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
