class Item < ApplicationRecord
  has_many :item_recipes
  has_many :recipes, through: :item_recipes
  has_many :item_supermarkets
  has_many :supermarkets, through: :item_supermarkets
end
