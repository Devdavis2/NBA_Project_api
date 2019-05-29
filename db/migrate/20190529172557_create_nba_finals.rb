class CreateNbaFinals < ActiveRecord::Migration[5.2]
  def change
    create_table :nba_finals do |t|
      t.string :team
      t.string :conference

      t.timestamps
    end
  end
end
