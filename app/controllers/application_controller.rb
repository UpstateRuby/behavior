class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_child

  def current_child
    Child.first
  end
end
