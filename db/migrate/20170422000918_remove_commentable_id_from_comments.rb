class RemoveCommentableIdFromComments < ActiveRecord::Migration[5.0]
  def change
    remove_column :comments, :commentable_id, :integer
    remove_column :comments, :commentable_type, :string
  end
end
