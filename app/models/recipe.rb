class Recipe < ApplicationRecord
  belongs_to :cuisine
  belongs_to :time_of_the_day
  has_many :diet_recipes
  has_many :diets, through: :diet_recipes
  has_many :steps
  has_many :item_recipes
  has_many :items, through: :item_recipes
  alias_attribute :highlights, :ingredients


  def self.search(params)
    recipes = Recipe.where(cuisine_id: params[:cuisine].to_i)
    recipes = recipes.where("name like ? or description like ?", "%#{params[:search]}", "%#{params[:search]}") if params[:search].present?
    recipes = recipes.joins(:diet_recipes).where('diet_recipes.diet_id' => params[:diet].to_i)
    recipes = recipes.where(timeoftheday_id: params[:time_of_the_day].to_i).limit(4)
    items = Item.pluck(:name)
    items = "{#{ items.map {|term| %Q("#{ term }") }.join(",") }}"
    recipes=recipes.where("ingredients <@?", "#{items}")
    recipes


  end

end
