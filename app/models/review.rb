class Review < ApplicationRecord
  belongs_to :establishment
  belongs_to :user
  validates :access_rating, presence: true
end
