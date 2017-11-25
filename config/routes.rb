Rails.application.routes.draw do
  root to: "users#index"
  get "/", to: "users#index"
  get "/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"
  get "/users/:id/blogs/new", to: "blogs#new", as: "new_blog"
  post "/blogs", to: "blogs#create"
  get "/users/:id/blogs", to: "blogs#index", as: "user_blogs"
end
