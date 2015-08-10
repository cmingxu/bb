# == Schema Information
#
# Table name: login_logs
#
#  id           :integer          not null, primary key
#  player_id    :integer
#  ip           :string
#  device_udid  :string
#  platform     :string
#  device_model :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class LoginLog < ActiveRecord::Base
  belongs_to :player
end
