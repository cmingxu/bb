class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :building_type
      t.integer :level
      t.integer :city_id
      t.integer :x
      t.integer :y
      t.integer :player_id
      t.datetime :last_updated_at

      t.timestamps null: false
    end
  end
end
