Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  resources :clips, only: :update
  post "/reward_claims/:id", to: "reward_claims#create", as: :reward_claims
  root "bars#index"
end
