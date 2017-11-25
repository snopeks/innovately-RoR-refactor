Rails.application.routes.draw do
  get 'sessions/new'

  root to: "users#index"
  get "/", to: "users#index"
  get "/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:user_id/blogs", to: "blogs#index", as: "user_blogs"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"
end
