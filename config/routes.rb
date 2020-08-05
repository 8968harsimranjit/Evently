Rails.application.routes.draw do
  root 'welcome#Index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :events 
  resources :users, only: [:new,:create]
  resource :session, only: [:new, :create, :destroy]
end
