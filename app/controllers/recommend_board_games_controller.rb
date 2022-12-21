class RecommendBoardGamesController < ApplicationController
  def index
    @recommend_board_games = RecommendBoardGame.all
  end

  def show
    @recommend_board_game = RecommendBoardGame.find(params[:id])
  end
end
