class AddRecipeIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :recipe_id, :integer
  end
end
