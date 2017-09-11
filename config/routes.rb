Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pictures#index'
resources :pictures
# get 'pictures' => 'pictures#index'
#
#
# post 'pictures' => 'pictures#create'
# get 'pictures/new' => 'pictures#new'
#
#
# get 'pictures/:id/edit' => "pictures#edit"
# patch 'pictures/:id' => "pictures#update"
#
# get 'pictures/:id' => 'pictures#show'
# delete 'pictures/:id' => 'pictures#destroy'

get 'users' => 'pictures#index'
post 'users' => 'users#create'
get 'users/new' => 'users#new'

get '/sessions/new' => 'sessions#new'
post '/sessions/new' => 'sessions#create'

delete '/sessions' => 'sessions#destroy'

end
