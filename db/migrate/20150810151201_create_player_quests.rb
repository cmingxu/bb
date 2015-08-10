class CreatePlayerQuests < ActiveRecord::Migration
  def change
    create_table :player_quests do |t|
      t.string :name
      t.string :state
      t.datetime :claimed_at

      t.timestamps null: false
    end
  end
end
