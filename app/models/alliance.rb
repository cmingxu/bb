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

class Alliance < ActiveRecord::Base
  has_many :alliance_memberships
  has_many :player
end
