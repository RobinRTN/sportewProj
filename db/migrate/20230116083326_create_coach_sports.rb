class CreateCoachSports < ActiveRecord::Migration[7.0]
  def change
    create_table :coach_sports do |t|
      t.references :coach, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
