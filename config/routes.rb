Rails.application.routes.draw do

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  resources :questions do 
    resources :answers, only: [:index, :new, :create]
  end

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  resources :users, only: [:show, :edit, :update]

  root to: 'pages#home'

  get 'pages/home', to: 'pages#home', as: :home
  get 'pages/login', to: 'pages#login', as: :login

end
