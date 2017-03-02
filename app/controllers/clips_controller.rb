class ClipsController < ApplicationController

  def update
    @clip = current_child.clip
    @clip.points = params[:points]
    @clip.save
    redirect_to root_url
  end
end
