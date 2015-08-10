# == Schema Information
#
# Table name: players
#
#  id           :integer          not null, primary key
#  name         :string
#  platform     :string
#  device_model :string
#  mobile_id    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Player < ActiveRecord::Base
  has_one :city, dependent: :destroy
  has_many :player_quests, dependent: :destroy
end
