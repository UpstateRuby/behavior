class Bar < ApplicationRecord

  def self.default_points
    where(default:true).first.points
  end
end
