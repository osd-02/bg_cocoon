class RecommendBoardGame < ApplicationRecord
  has_many :comment_to_recommends

  validates :title, presence: true
  validates :link, presence: true
  validates :score, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100, only_integer: true}
  validates :body, presence: true
end
