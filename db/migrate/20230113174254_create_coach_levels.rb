class CreateCoachLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :coach_levels do |t|
      t.string :name

      t.timestamps
    end
  end
end
