class Answer < ApplicationRecord
  belongs_to :option
  belongs_to :user

  def right
    self.option.right
  end
end
