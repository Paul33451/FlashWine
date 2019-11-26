class Review < ApplicationRecord
  belongs_to :wine
  belongs_to :user
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :content, presence: true, length: { minimum: 10 }
end
