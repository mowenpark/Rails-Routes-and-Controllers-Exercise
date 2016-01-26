Rails.application.routes.draw do

  # get '/users' => 'users#index', :as => 'users'
  # get '/users/new' => 'users#new', :as => 'new_user'
  # get '/users/:id/edit' => 'users#edit', :as => 'edit_user'
  # get '/users/:id' => 'users#show', :as => 'user'
  # post '/users' => 'users#create'
  # patch '/users/:id' => 'users#update'
  # put '/users/:id' => 'users#update'
  # delete '/users/:id' => 'users#destroy'

  resources :users do
    resources :contacts
  end
  # resources :contacts

  resources :contact_shares
end
