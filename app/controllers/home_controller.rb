class HomeController < ApplicationController

  def index
    @recipes = Recipe.all.limit(1).order('created_at desc')
  end

  def profile
    if User.find_by_name(params[:id])
    @username = params[:id]
   else
    redirect_to root_path, notice: "User Not Found"
   end

    @recipes = Recipe.where("user_id = ?", User.find_by_name(params[:id])).order("created_at desc")
  end
end
