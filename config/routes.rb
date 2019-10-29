Rails.application.routes.draw do
  get 'projects', to: 'projects#index', as: 'projects'
  get 'projects/show', to: 'projects#show', as: 'projects_show'
  get 'tasks/index', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: 'tasks_show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "tasks#index"
end
