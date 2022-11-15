Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root to: "tasks#home"
  # root "articles#index"
  #Lire toutes les tâches
  get '/tasks', to: 'tasks#index'
  # Lire les informations d'une tâche
  get '/tasks/:id', to: 'tasks#show', as: :task
end
