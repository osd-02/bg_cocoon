class CommentToRecommendsController < ApplicationController
  def create
    @recommend_board_game = RecommendBoardGame.find(params[:recommend_board_game_id])
    @comment_to_recommend = @recommend_board_game.comment_to_recommends.create(comment_to_recommend_params)
    redirect_to recommend_board_game_path(@recommend_board_game)
  end

  def destroy
    @recommend_board_game = RecommendBoardGame.find(params[:recommend_board_game_id])
    @comment_to_recommend = @recommend_board_game.comment_to_recommends.find(params[:id])
    @comment_to_recommend.destroy
    p params[:recommend_board_game_id]

    redirect_to recommend_board_game_path(@recommend_board_game), status: 303
  end

  private
    def comment_to_recommend_params
      params.require(:comment_to_recommend).permit(:commenter, :body, :score, :status)
    end
end
