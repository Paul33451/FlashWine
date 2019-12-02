class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :answers, dependent: :destroy
  has_many :reviews, dependent: :destroy
  # has_many :recommendations, dependent: :destroy
  has_friendship
  mount_uploader :photo, PhotoUploader

  def level
    self.score / 200
  end
end
