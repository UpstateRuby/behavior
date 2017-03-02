class Clip < ApplicationRecord
  belongs_to :child

  def reset
    self.points = Bar.default_points
    self.save
  end
end
