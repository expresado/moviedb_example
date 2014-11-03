Rails.application.routes.draw do
  resources :movies do
    resource :comments, only: [:create]
    resource :ratings, only: [:create]
  end

  resources :users, only: [:new, :create]

  get '/logout' => 'application#logout'

  root 'movies#index'

end
