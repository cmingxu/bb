# == Schema Information
#
# Table name: buildings
#
#  id              :integer          not null, primary key
#  building_type   :string
#  level           :integer
#  city_id         :integer
#  x               :integer
#  y               :integer
#  player_id       :integer
#  last_updated_at :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class BuildingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
