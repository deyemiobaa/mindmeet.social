# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }

  root 'welcome#index'
  get 'welcome', to: 'call_to_action#after_signup'
end
