Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :types
  resources :teams, except:[:edit]
  post 'teams/:id/edit', to: 'teams#edit', as: 'edit_team'
  post 'teams/:id/admin', to: 'teams#admin', as: 'admin_team'
  resources :recruits, except:[:edit]
  post 'recruits/:id/edit', to: 'recruits#edit', as: 'edit_recruit'
  get 'about', to: 'about#index', as: 'about'
  resources :questionnaires
  get 'questionnaires/:id/answer', to: 'questionnaires#answer', as: 'answer_questionnaire'
  post 'questionnaires/:id/create_answer', to: 'questionnaires#create_answer', as: 'create_answer_questionnaire'
  get 'questionnaire_answers/:id/show_answer', to: 'questionnaires#show_answer', as: 'show_answer_questionnaire'

end
