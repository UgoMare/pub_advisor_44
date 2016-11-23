class Pub < ApplicationRecord
  validates :name, presence: true
  validates :location, presence: true
  validates :image, presence: true

  has_many :reviews

  def average
    stars = self.reviews.sum(:stars)
    nb_reviews = self.reviews.count
    nb_reviews = 1 if nb_reviews == 0
    stars / nb_reviews
  end
end
