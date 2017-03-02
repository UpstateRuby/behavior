class RewardClaimsController < ApplicationController

  def create
    reward = Reward.find(params[:id])
    if current_child.claim(reward)
      redirect_to root_url, notice: "woohoo!"
    else
      redirect_to root_url, error: current_child.errors.full_messages
    end
  end

end
