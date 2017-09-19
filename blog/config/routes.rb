Rails.application.routes.draw do
  # Only the GET route for posts/index
  # get 'posts/index' 
  # All routs needed for a CRUD on posts
  resources :posts
    
  # makes the root dir of the project the index page
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
