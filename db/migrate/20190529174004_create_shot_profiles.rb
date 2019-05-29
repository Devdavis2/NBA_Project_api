class CreateShotProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :shot_profiles do |t|
      t.integer :field_goals_made
      t.integer :field_goals_attempted
      t.decimal :field_goal_percentage
      t.string :area

      t.timestamps
    end
  end
end
