class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cotisation
  monetize :amount_cents
end
