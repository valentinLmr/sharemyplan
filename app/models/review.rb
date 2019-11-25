class Review < ApplicationRecord
  belongs_to :cotisation

  validates :rating, presence: true
  validates :content, presence: true
end
