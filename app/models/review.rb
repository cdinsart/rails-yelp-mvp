class Review < ApplicationRecord
  belongs_to :restaurant
  validates :stars, inclusion: { [1, 2, 3, 4, 5] }
end
