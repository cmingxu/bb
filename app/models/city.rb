# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  x          :integer
#  y          :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ActiveRecord::Base
  has_many :buildings, dependent: :destroy
end
