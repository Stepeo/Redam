class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all.order("created_at")
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def find_recipe
  end
  def search
    @recipes = Recipe.search(params)
  end


  private
  def recipes_params
    params.require(:recipe).permit(:name, :description, :cuisine_id, :ingredients)
  end

end
