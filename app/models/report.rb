class Report < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :title, presence: true
  validates :content, presence: true
  validates :location, presence: true
end
