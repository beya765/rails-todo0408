Rails.application.routes.draw do
  root 'todos#home'
  post '/create', to: 'todos#create'
  delete '/delete/:id', to: 'todos#delete'
end
