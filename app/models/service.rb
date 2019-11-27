class Service < ApplicationRecord
  CATEGORIES = {
    "music" => "fas fa-music",
    "vosd" => "far fa-play-circle"
  }

  has_many :subscriptions

  validates :name, presence: true
  # validates :description, presence: true
  validates :number_of_places, presence: true
  validates :total_price, presence: true
  validates :category, inclusion: CATEGORIES.keys
end
