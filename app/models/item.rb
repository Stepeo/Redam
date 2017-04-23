class Item < ApplicationRecord
  has_many :recipes, through: :ingrediantizations
  has_many :supermarkets, through: :finders
end
