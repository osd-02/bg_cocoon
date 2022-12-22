class RecommendBoardGame < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20}
  validates :link, presence: true
  validates :score, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100, only_integer: true}
  validates :body, presence: true
end
