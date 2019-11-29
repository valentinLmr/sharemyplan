class Cotisation < ApplicationRecord
  belongs_to :user
  belongs_to :subscription
  monetize :price_cents
end
