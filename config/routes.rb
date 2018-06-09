Rails.application.routes.draw do
  resources :myfiles, only: [:index, :new, :create, :destroy]
  root 'myfiles#index'

  get 'myfiles/index'

  get 'myfiles/new'

  get 'myfiles/create'

  get 'myfiles/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
