class Favorite < ApplicationRecord
  belongs_to :establishment
  belongs_to :user
end
