Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "/festivals", to: "festivals#index"
  get "/festivals/new", to: "festivals#new"
  post "/festivals", to: "festivals#create"
  get "/festivals/:id", to: "festivals#show"
  get "/artists", to: "artists#index"
  get "/artists/:id", to: "artists#show"
  get "festivals/:id/artists", to: "festival_artists#index"
  get "festivals/:id/edit", to: "festivals#edit"
  patch "festivals/:id", to: "festivals#update"
  get "festivals/:id/artists/new", to: "artists#new"
  post "festivals/:id/artists", to: "artists#create"
  get "artists/:id/edit", to: "artists#edit"
  patch "artists/:id", to: "artists#update"
end
