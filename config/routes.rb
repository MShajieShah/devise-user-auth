Rails.application.routes.draw do
  root to: "posts#index"
      devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        confirmations: 'users/confirmations'
      }
  resources :posts
  namespace :admin do
  	resources :posts
  	root to: "posts#index"
  	
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
