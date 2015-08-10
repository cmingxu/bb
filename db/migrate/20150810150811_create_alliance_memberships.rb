class CreateAllianceMemberships < ActiveRecord::Migration
  def change
    create_table :alliance_memberships do |t|
      t.integer :alliance_id
      t.string :state
      t.integer :player_id

      t.timestamps null: false
    end
  end
end
