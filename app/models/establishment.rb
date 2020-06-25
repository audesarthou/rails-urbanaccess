class Establishment < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :accessibilities, dependent: :destroy
  has_many_attached :photos
  validates :name, :address, :description, :category, presence: true
  validates :name, uniqueness: { scope: :address }
  validates :category, inclusion: { in: %w(Restaurant Bar Cinema Theatre Logement:location logement:achat),
    message: "%{value} is not a valid category" }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
