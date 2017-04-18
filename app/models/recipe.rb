class Recipe < ApplicationRecord
  belongs_to :cuisine
  belongs_to :time_of_the_day
  has_many :items
  has_many :diet_recipes
  has_many :diets, through: :diet_recipes
  alias_attribute :highlights, :ingredients

  def self.search(params)
    recipes = Recipe.where(cuisine_id: params[:cuisine].to_i)
    recipes = recipes.where("name like ? or description like ?", "%#{params[:search]}", "%#{params[:search]}") if params[:search].present?
    recipes
  end
  
end
