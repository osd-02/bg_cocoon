class CommentToRecommend < ApplicationRecord
  include Status
  
  belongs_to :recommend_board_game
end
