Rails.application.routes.draw do
  root to: "users#index"
  get "/", to: "users#index"
  get "/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  get "/idea/new", to: "blogs#new", as: "new_idea"
  post "/blogs", to: "blogs#create"
  get "/ideas", to: "blogs#index", as: "user_ideas"
  get "/ideas/:id", to: "blogs#show", as: "idea"
  get "/ideas/:id/edit", to: "blogs#edit", as: "edit_blog"
end
