Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :types
  resources :teams
  resources :recruits
  post 'recruits/:id/edit', to: 'recruits#edit'

end
