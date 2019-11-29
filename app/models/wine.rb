class Wine < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: { scope: :year}
  has_many :quizzes, dependent: :destroy

  def average_rating
    wine_grades = self.reviews.map do |review|
      review.rating
    end
    average = wine_grades.sum / wine_grades.size.to_f
  end

end
