class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :service
  has_many :cotisations, dependent: :destroy

  validates :available_places, presence: true
  validates :identifiant, presence: true
  validates :password, presence: true

  def name
    self.service.name
  end

  def price
    self.service.total_price.fdiv(self.service.number_of_places).round(2)
  end
end
