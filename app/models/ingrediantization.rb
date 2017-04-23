class Ingrediantization < ApplicationRecord
  belongs_to :recipe
  belongs_to :item
end
