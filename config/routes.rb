# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # GET /about
  get 'about-us', to: 'about#index', as: :about

  get 'sign_up', to: 'registrations#new'

  root to: 'main#index', as: :home
end
