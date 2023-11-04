Rails.application.routes.draw do
  resources :users
  post "/login", to: "session#create"
  get "/me", to: "users#show"
  delete "/logout", to: "session#destroy"
  post "/signup", to: "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
