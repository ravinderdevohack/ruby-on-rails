Rails.application.routes.draw do
  get 'donations/index'
  get 'donations/new'
  get 'donations/edit'
  get 'donations/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "news#index"
  get 'abouts' => 'abouts#index'

  resources :donations
  resources :abouts
end

