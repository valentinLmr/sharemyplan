class Service < ApplicationRecord
  has_many :subscriptions

  validates :name, presence: true
  # validates :description, presence: true
  validates :number_of_places, presence: true
  validates :total_price, presence: true
  validates :category, presence: true

end
