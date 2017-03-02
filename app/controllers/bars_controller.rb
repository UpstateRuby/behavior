class BarsController < ApplicationController

  def index
    @clip = current_child.clip
    @bars = Bar.order(points: :desc)
    @rewards = Reward.order(cost: :desc)
  end
end
