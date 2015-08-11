class AddRolesToModerators < ActiveRecord::Migration
  def change
    add_column :moderators, :roles, :string
  end
end
