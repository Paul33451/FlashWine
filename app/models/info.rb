class Info < ApplicationRecord
  belongs_to :lecture
  validates :title, presence: true
  validates :content, presence: true
end
