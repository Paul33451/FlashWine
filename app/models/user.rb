class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :answers
  has_friendship
  mount_uploader :photo, PhotoUploader

  def level
    if self.score.nil?
      return "Bouteille"
    elsif self.score < 400
      return "Magnum"
    elsif self.score < 600
      return "Jeroboam"
    elsif self.score < 800
      return "Impérial"
    elsif self.score < 1000
      return "Balthazar"
    elsif self.score < 1200
      return "Nabuchodonosor"
    elsif self.score < 1400
      return "Melchior"
    end
  end
end
