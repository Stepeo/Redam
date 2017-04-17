class RecipesController < ApplicationController
  def index
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


  private
  def recipes_params
    params.require(:job).permit(:name, :description, :cuisine_id, :ingredients)
  end

end
