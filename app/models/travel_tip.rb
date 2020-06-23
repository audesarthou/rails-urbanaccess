class TravelTip < ApplicationRecord
  validates :name, presence: true
  validates :url, presence: true
  validates :description, length: { maximum: 150 }
end
