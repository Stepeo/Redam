class Supermarket < ApplicationRecord
  has_many :items, through: :finders
end
