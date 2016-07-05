Rails.application.routes.draw do
  # get '/student/new', to: 'students#new', as: 'new_student'
  resources :students #only: [:index, :create, :new]
  get '/students/:id', to: 'students#show'

end
