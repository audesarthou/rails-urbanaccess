class Review < ApplicationRecord
  belongs_to :establishment
  belongs_to :user
  validates :access_rating, presence: true, inclusion: { in: (0..5)}
  validates :service_rating, inclusion: { in: [nil, 0, 1, 2, 3, 4, 5] }
end
