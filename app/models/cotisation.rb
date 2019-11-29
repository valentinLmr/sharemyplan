class Cotisation < ApplicationRecord
  belongs_to :user
  belongs_to :subscription
  has_many :reviews
end
