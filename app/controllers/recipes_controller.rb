class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.order(created_at: :desc)
  end

  def new
    @recipe = RecipesTag.new
  end

  def create
    @recipe = RecipesTag.new(recipe_params)
    if @recipe.valid?
      @recipe.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end


  private

  def recipe_params
    params.require(:recipes_tag).permit(:title, :text, :process, :material, :name, :image).merge(user_id: current_user.id)
  end

end
