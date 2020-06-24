class TravelTip < ApplicationRecord
  has_one_attached :photo
  validates :name, presence: true
  validates :url, presence: true
  validates :description, length: { maximum: 150 }
end
