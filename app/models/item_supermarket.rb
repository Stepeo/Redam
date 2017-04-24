class ItemSupermarket < ApplicationRecord
  belongs_to :item
  belongs_to :supermarket
end
