class Child < ApplicationRecord
  has_many :scores
  has_many :reward_claims
  has_one :clip

  after_create :create_clip

  def total_rewards
    scores.sum(:points) / Bar.maximum(:points)
  end

  def score_and_reset
    scores.create(points: clip.points)
    clip.reset
  end

  def claim(reward)
    if total_rewards < reward.cost
      false
    else
      self.reward_claims.create(name: reward.name, cost: reward.cost)
    end
  end

  def self.score_and_reset
    self.all.each do |child|
      child.score_and_reset
    end
  end


  private

  def create_clip
    clip = self.build_clip(points: Bar.default_points)
    clip.save
  end
end
