class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :name
      t.integer :scores    #scoresにした。本当はscore
      t.references :user, foreign_key: true
      t.timestamps null: false
    end
  end
end
