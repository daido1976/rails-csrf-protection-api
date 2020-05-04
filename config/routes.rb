# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'welcome#index'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
