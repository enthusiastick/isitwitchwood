Singleserve::Application.routes.draw do

  root 'pages#index'

  resources :events

  resources :sessions, only: [:create, :index]

  get '/auth/:provider/callback', to: 'sessions#create'

end
