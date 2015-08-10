Rails.application.routes.draw do
  namespace :api do
    get 'version' => 'base#version'
    resources :buildings
    resources :alliances
  end
end
