Rails.application.routes.draw do
  resources :histories
  resources :users
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  get '/search', to: 'welcome#search'

end
