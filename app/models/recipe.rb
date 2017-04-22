class Recipe < ApplicationRecord
  belongs_to :cuisine
  belongs_to :time_of_the_day
  has_many :items
  has_many :diet_recipes
  has_many :diets, through: :diet_recipes
  has_many :steps
  alias_attribute :highlights, :ingredients

  def self.search(params)
    recipes = Recipe.where(cuisine_id: params[:cuisine].to_i)
    recipes = recipes.where("name like ? or description like ?", "%#{params[:search]}", "%#{params[:search]}") if params[:search].present?
    recipes = recipes.joins(:diet_recipes).where('diet_recipes.diet_id' => params[:diet].to_i)
    recipes = recipes.where(timeoftheday_id: params[:time_of_the_day].to_i).limit(4)
    recipes
  end

end
