class AddUserRefToPosts < ActiveRecord::Migration[7.1]
  def change
    add_reference :posts, :user, null: false, foreign_key: true
    add_reference :posts, :comment, foreign_key: true
  end
end
