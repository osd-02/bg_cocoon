class AddStatusToRecommendBoardGames < ActiveRecord::Migration[6.1]
  def change
    add_column :recommend_board_games, :status, :string
  end
end
