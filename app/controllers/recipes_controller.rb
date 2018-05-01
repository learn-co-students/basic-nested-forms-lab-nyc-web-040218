class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient_name: 'first')
    @recipe.ingredients.build(ingredient_name: 'second')
  end

  def create
  end
end
