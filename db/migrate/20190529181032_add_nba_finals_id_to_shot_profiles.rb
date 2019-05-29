class AddNbaFinalsIdToShotProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :shot_profiles, :nba_final_id, :integer
  end
end
