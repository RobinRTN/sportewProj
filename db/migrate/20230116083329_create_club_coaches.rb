class CreateClubCoaches < ActiveRecord::Migration[7.0]
  def change
    create_table :club_coaches do |t|
      t.references :club, null: false, foreign_key: true
      t.references :coach, null: false, foreign_key: true

      t.timestamps
    end
  end
end
