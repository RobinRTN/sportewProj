class CreatePlayerCoaches < ActiveRecord::Migration[7.0]
  def change
    create_table :player_coaches do |t|
      t.references :player, null: false, foreign_key: true
      t.references :coach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
