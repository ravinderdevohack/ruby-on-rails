Rails.application.routes.draw do
  # root "user_details#index"
  get 'user_details', to: 'user_details#index'
  get "user_details/new", to: 'user_details#new'
  post "user_details/new", to: "user_details#create", as: :create
  get "user_details/:id", to: "user_details#show"
  get "user_details/:id/edit", to: "user_details#edit"
  patch "user_details/:id", to: "user_details#update", as: :update
  delete "user_details/:id", to: "user_details#destroy"

  get 'writers/index'
  get 'novels/index'
  get 'donations/index'
  get 'donations/new'
  get 'donations/edit'
  get 'donations/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get "search#index"
  get 'abouts' => 'abouts#index'
  get 'novels' => 'novels#index'

  resources :donations
  resources :user_details
  resources :writers
  resources :novels
  resources :abouts
end

