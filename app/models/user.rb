class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :answers, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :recommendations, dependent: :destroy, foreign_key: "recipient_id"
  has_friendship
  mount_uploader :photo, PhotoUploader

  def level
    self.score / 200 +  1
  end

  def fullname
    return "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

end
