Rails.application.routes.draw do
  resources :photos
  get 'users/index'

  get 'users/show'

  resources :posts do
  	resources :replies
  end

  get 'posts/index'

  devise_for :users
  resources :users
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
