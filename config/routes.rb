Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root to: 'tasks#index'
  # Index All
  get 'tasks', to: 'tasks#index'

  # Add New Task
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'

  # Show Task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Update Task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit

end
