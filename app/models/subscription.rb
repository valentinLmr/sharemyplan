class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :price, presence: true
  validates :available_places, presence: true
  validates :identifiant, presence: true
  validates :password, presence: true
end
