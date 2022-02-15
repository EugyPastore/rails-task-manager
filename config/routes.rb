Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get "tasks", to: "tasks#index"
# add new tasks: 1. new form
get "tasks/new", to: "tasks#new", as: :new_task
# add new tasks: 2. post the form
post "tasks", to: "tasks#create"

get "tasks/:id", to: "tasks#show", as: :task


# edit task 1. get the form
get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
# edit task 1. patch the form
patch "tasks/:id", to: "tasks#update"

# destroy a task
delete "tasks/:id", to: "tasks#destroy"

# resources :tasks, only: [:create, :index, :destroy]
end
