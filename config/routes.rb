Rails.application.routes.draw do
  devise_for :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :types
  resources :teams
  post 'teams/:id/edit', to: 'teams#edit'
  resources :recruits
  post 'recruits/:id/edit', to: 'recruits#edit'

end
