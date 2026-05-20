Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
  get "about",    to: "pages#about",    as: :about
  get "shows",    to: "pages#shows",    as: :shows
  get "releases", to: "pages#releases", as: :releases
  get "video",    to: "pages#video",    as: :video
end
