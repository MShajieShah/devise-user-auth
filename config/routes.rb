Rails.application.routes.draw do
  root to: "home#index"
  #     devise_for :users, controllers: {
  #       sessions: 'users/sessions',
  #       registrations: 'users/registrations',
  #       confirmations: 'users/confirmations'
  #     }
  # resources :posts
    get  'signup', :controller => 'users', :action => 'new'
   get  'logout', :controller => 'user_sessions', :action => 'destroy'
   get 'login', :controller => 'user_sessions', :action => 'new'
       devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        confirmations: 'users/confirmations'
      }

 resources :users
 resources :posts
end
