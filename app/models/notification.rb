class Notification < ApplicationRecord
  belongs_to :user

  scope :unviewed, -> { where("unviewed = true") }
end
