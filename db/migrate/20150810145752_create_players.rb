class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :platform
      t.string :device_model
      t.string :mobile_id

      t.timestamps null: false
    end
  end
end
