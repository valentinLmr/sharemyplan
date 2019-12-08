class Order < ApplicationRecord
  POLICE = ["","","" ]
  belongs_to :user
  belongs_to :cotisation
  monetize :amount_cents
end
