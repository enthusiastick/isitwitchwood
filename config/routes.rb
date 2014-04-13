Singleserve::Application.routes.draw do

  root 'pages#index'

  resources :events

  get '/auth/:provider/callback', to: 'events#new'

end
