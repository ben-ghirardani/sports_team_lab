class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :home_team
      t.string :away_team
      t.string :location
      t.string :score
      t.references :team, index: true, foreign_key: true
      t.references :league, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
