class Service < ApplicationRecord
  CATEGORIES = ["Music", "VOSD"]
  has_many :subscriptions

  validates :name, presence: true
  # validates :description, presence: true
  validates :number_of_places, presence: true
  validates :total_price, presence: true
  validates :category, inclusion: CATEGORIES
end
