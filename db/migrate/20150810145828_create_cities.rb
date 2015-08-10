class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :player_id
      t.integer :x
      t.integer :y

      t.timestamps null: false
    end
  end
end
