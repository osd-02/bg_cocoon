class RecommendBoardGamesController < ApplicationController
  def index
    @recommend_board_games = RecommendBoardGame.all
  end

  def show
    @recommend_board_game = RecommendBoardGame.find(params[:id])
  end

  def new
    @recommend_board_game = RecommendBoardGame.new
  end

  def create
    @recommend_board_game = RecommendBoardGame.new(title: "hoge", link: "hoge", score: 100, body: "hogehoge")

    if @recommend_board_game.save
      redirect_to @recommend_board_game
    else
        render :new, status: :unprocessable_entity
    end
  end

  def edit
    @recommend_board_game = RecommendBoardGame.find(params[:id])
  end

  def update
    @recommend_board_game = RecommendBoardGame.find(params[:id])

    if @recommend_board_game.update(recommend_board_game_params)
      redirect_to @recommend_board_game
    else
        render :edit, status: :unprocessable_entity
    end
  end

  private
    def recommend_board_game_params
      params.require(:recommend_board_game).permit(:title, :link, :score, :body)
    end
end
