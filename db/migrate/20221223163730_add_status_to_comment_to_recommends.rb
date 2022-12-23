class AddStatusToCommentToRecommends < ActiveRecord::Migration[6.1]
  def change
    add_column :comment_to_recommends, :status, :string
  end
end
