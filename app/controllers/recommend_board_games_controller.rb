class RecommendBoardGamesController < ApplicationController
  http_basic_authenticate_with name: "osd", password: "rbg", except: [:index, :show]

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
    @recommend_board_game = RecommendBoardGame.new(recommend_board_game_params)

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

  def destroy
    @recommend_board_game = RecommendBoardGame.find(params[:id])
    @recommend_board_game.destroy

    redirect_to recommend_board_games_path
  end

  private
    def recommend_board_game_params
      params.require(:recommend_board_game).permit(:title, :link, :score, :body, :status)
    end
end
