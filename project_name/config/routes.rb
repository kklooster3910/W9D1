Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  get "/users", to: "users#index"
  post "/users", to: "users#create"
  put "/users/:id", to: "users#update"
  patch "/users/:id", to: "users#update"
  get "/users/new", to: "users#new", as: 'new_user'
  get "/users/:id/edit", to: "users#edit", as: 'edit_user' #why is this a get instead of a patch? 
  get "/users/:id", to: "users#show", as: 'user'
  delete "/users/:id", to: "users#delete"    #why did delete change colors, is this syntax proper?  
end
