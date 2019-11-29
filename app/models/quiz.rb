class Quiz < ApplicationRecord
  belongs_to :wine, optional: true
  has_many :questions, dependent: :destroy
  has_many :options, through: :questions, dependent: :destroy
  has_many :answers, through: :options, dependent: :destroy
end
