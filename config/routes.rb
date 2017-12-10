Rails.application.routes.draw do
  resources :users
  resources :posts

  post "sessions", controller: 'my_sessions', action: :create
  delete "sessions/:id", controller: 'my_sessions', action: :destroy
end