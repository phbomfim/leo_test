# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'

  resources :users do
    member do
      get :export_json
    end
  end
end