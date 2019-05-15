class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  Validates :category, inclusion: { ["chinese", "italian", "japanese", "french", "belgian"] }
end
