class Wine < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: { scope: :year}

  has_many :quizzes, dependent: :destroy
  # validates :cepage, presence: true, inclusion: { in: ["Merlot", "Malbec", "Chardonnay", "Chenin", "Cabernet franc", "Cabernet Sauvignon", "Muscadet"] }
  acts_as_taggable_on :tags

  def average_rating
    wine_grades = self.reviews.map do |review|
      review.rating
    end
    average = wine_grades.sum / wine_grades.size.to_f
  end

  $colors = ["blanc", "rouge", "rosé"]
  $years = (1985..2020)
  $regions = ["Bordeaux", "Bourgogne", "Loire"]


  # acts_as_taggable_on :name
  # acts_as_taggable_on :year
  # acts_as_taggable_on :region
  # acts_as_taggable_on :color


end
