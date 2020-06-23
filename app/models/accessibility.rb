class Accessibility < ApplicationRecord
  belongs_to :establishment
  validates :badge, presence: true
end
