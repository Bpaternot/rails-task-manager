Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   As a user I can list tasks
  get 'tasks', to: 'tasks#index'
# As a user I can display the details of a task
  get 'tasks/new', to: 'tasks#new', as: "new_task"
# As a user I can add a task in my ToDo list
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: "edit_task"
  get 'tasks/:id', to: 'tasks#show', as: "task"
# As a user I can edit the details of a task
  patch 'tasks/:id', to: 'tasks#update'
# As a user I can remove a task from my ToDo list
  delete 'tasks/:id', to: 'tasks#destroy'
end
