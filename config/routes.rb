Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'tasks/new', to: 'tasks#new'   # Formulaire pour créer une nouvelle tâche
  post 'tasks', to: 'tasks#create'   # Créer une nouvelle tâche
  get 'tasks/:id', to: 'tasks#show', as: 'task'  # Afficher une tâche spécifique
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'  # Formulaire pour éditer une tâche
  patch 'tasks/:id', to: 'tasks#update'  # Mettre à jour une tâche existante
  delete 'tasks/:id', to: 'tasks#destroy'  # Supprimer une tâche Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get 'tasks', to: 'tasks#index'
end
