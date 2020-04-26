Rails.application.routes.draw do
  resources :todo_lists
    resources :todo_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "todo_lists#index"
end
