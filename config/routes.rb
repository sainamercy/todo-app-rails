Rails.application.routes.draw do

  get '/', to: 'todos#get_todos'

  post '/create', to: 'todos#create'

  put '/update/:id', to: 'todos#update'

end
