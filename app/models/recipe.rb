class Recipe < ApplicationRecord
  belongs_to :cuisine
  belongs_to :time_of_the_day
  has_many :ingredients
  has_many :items
  has_many :diet_recipes
  has_many :diets, through: :diet_recipes
end
