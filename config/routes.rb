Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'tasks/index', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: 'tasks_show'
  get 'projects', to: 'projects#index', as: 'projects'
  get 'projects/:id', to: 'projects#show', as: 'projects_show'
  get 'news', to: 'news#index', as: 'news'
  get 'news/:id', to: 'news#show', as: 'news_show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "tasks#index"
end
