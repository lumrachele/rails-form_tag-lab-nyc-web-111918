Rails.application.routes.draw do
  #get 'students/new', to: 'students#new', as: 'new_student'
  #get 'students/create', to: 'students#create', as: 'create_student'
  resources :students, only: [:index, :new, :create]
  get '/students/:id', to: 'students#show', as: 'student'
end
