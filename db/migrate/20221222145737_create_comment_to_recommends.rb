class CreateCommentToRecommends < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_to_recommends do |t|
      t.string :commenter
      t.text :body
      t.integer :score
      t.references :recommend_board_game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
