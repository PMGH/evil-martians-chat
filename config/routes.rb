# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'chat#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: 'auth#new'
  post '/login', to: 'auth#create'
end
