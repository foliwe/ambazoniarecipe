class Recipes::CommentsController < CommentsController
  before_action :set_commentable


  private
  
  def set_commentable
    @commentable = Recipe.friendly.find(params[:recipe_id])
  end
end