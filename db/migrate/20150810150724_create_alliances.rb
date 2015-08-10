class CreateAlliances < ActiveRecord::Migration
  def change
    create_table :alliances do |t|
      t.string :name
      t.integer :member_count
      t.integer :created_by
      t.string :state

      t.timestamps null: false
    end
  end
end
