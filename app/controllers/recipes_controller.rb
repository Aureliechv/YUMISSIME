class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    authorize @recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.created_by_id = current_user.id
    @recipe.save
    authorize @recipe
  end

private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :difficulty, :number_of_people, :min_number_of_people)
  end
end
