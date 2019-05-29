Rails.application.routes.draw do
  resources :shot_profiles
  resources :nba_finals, only: [:index, :show] do
    resources :shot_profiles, except: [:show]
  end
end
