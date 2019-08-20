Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # show all tasks
  get 'tasks', to: "tasks#index"

  # add new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # show one task
  get 'tasks/:id', to: "tasks#show", as: :task

  # edit/update the task
  get 'tasks/:id/edit', to: "tasks#edit", as: :edit
  patch 'tasks/:id', to: "tasks#update"

  delete 'tasks/:id', to: "tasks#destroy"
end
