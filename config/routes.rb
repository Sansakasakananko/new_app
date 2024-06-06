Rails.application.routes.draw do
  # get 'posts/index' to: 'posts#', as:
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/edit'
  
  root 'posts#index'
  resources :posts
end
