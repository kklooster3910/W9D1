Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users, only: [index, update, create] -- rewatch this part of the videos
  get "/users", to: "users#index"
  post "/users", to: "users#create"
  put "/users/:id", to: "users#update"
  patch "/users/:id", to: "users#update"
  get "/users/new", to: "users#new", as: 'new_user'
  get "/users/:id/edit", to: "users#edit", as: 'edit_user' #why is this a get instead of a patch? 
  get "/users/:id", to: "users#show", as: 'user'
  delete "/users/:id", to: "users#delete"    #why did delete change colors, is this syntax proper? 
  
  get "/artworks", to: "artworks#index"
  post "/artworks", to: "artworks#create"
  put "/artworks/:id", to: "artworks#update"
  patch "/artworks/:id", to: "artworks#update"
  get "/artworks/new", to: "artworks#new", as: 'new_artwork'
  get "/artworks/:id/edit", to: "artworks#edit", as: 'edit_artwork' #why is this a get instead of a patch? 
  get "/artworks/:id", to: "artworks#show", as: 'artwork'
  delete "/artworks/:id", to: "artworks#delete"

  post "/artworksharings", to: "artworksharings#create"
  delete "/artworksharing/:id", to: "artworksharings#delete"
  
end
