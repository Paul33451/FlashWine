class Quiz < ApplicationRecord
  belongs_to :wine, optional: true
  has_many :questions
end
