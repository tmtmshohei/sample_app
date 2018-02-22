Rails.application.routes.draw do
  root 'tasks#index'

  get 'tasks/new' => 'tasks#new'

  get '/tasks' => 'tasks#index'

  post '/tasks' => 'tasks#create'

  get '/tasks/:id'  => 'tasks#show'

  get '/tasks/:id/edit' => 'tasks#edit'

  patch '/tasks/:id/update' => 'tasks#update'

  put '/tasks/:id/update' => 'tasks#update'

  post '/tasks/:id/destroy' => 'tasks#destroy'






get '/test'=>'test#test'

get '/test/tree'=>'test#tree'

get '/main'=>'main#main'
get '/main/lists'=>'main#lists'
post '/main/create'=>'main#create'
get '/main/:id' => 'main#show'
get '/main/:id/edit'=>'main#edit'
post '/main/:id/update'=>'main#update'
post '/main/:id/delete'=>'main#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
