class RemoveCommentRefFromComments < ActiveRecord::Migration[7.1]
  def change
    remove_reference :comments, :comment, null: false, foreign_key: true
  end
end
