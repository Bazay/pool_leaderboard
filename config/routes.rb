Rails.application.routes.draw do
  resources :matches
  devise_for :users, controllers: {
    registrations: 'registrations',
    sessions: 'sessions'
  }
end
