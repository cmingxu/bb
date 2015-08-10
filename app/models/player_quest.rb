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

class PlayerQuest < ActiveRecord::Base
end
