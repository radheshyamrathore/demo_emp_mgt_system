Rails.application.routes.draw do
  devise_for :users

devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "users#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
end
