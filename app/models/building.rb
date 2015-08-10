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

class Building < ActiveRecord::Base
  belongs_to :city
end
