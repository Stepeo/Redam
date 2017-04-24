class Supermarket < ApplicationRecord
  has_many :items, through: :item_supermarket
end
