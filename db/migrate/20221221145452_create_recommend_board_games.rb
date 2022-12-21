class CreateRecommendBoardGames < ActiveRecord::Migration[6.1]
  def change
    create_table :recommend_board_games do |t|
      t.string :title
      t.string :link
      t.integer :score
      t.text :body

      t.timestamps
    end
  end
end
