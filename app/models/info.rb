class Info < ApplicationRecord
  belongs_to :lecture
  validates :field, presence: true
  validates :content, presence: true
end
