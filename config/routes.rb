# frozen_string_literal: true

Rails.application.routes.draw do
  resources :participants
  resources :secret_friend
  root 'participants#index'
end
