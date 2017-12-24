Rails.application.routes.draw do
get '/test'=>'test#test'
post '/test/create'=>'test#create'
post '/test/list'=>'test#list'
get '/test/list'=>'test#list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
