class Pub < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :image, presence: true
end
