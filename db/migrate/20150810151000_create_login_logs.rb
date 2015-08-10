class CreateLoginLogs < ActiveRecord::Migration
  def change
    create_table :login_logs do |t|
      t.integer :player_id
      t.string :ip
      t.string :device_udid
      t.string :platform
      t.string :device_model

      t.timestamps null: false
    end
  end
end
