class Flat < ApplicationRecord
  validates :name, :address, :picture_url, :price_per_night, :description, presence: true
  validates :name, :address, length: { minimum: 5 }
  validates :description, length: { minimum: 15 }
end
