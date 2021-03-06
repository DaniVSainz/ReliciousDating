Rails.application.routes.draw do
  authenticated :user do
  root :to => 'profiles#index', as: :authenticated_root #Currently profiles show has a bug !!
  end
  root :to => 'welcome#index'
  get "welcome/aboutus" => "welcome#aboutus"
  get "welcome/testfile" => "welcome#testfile"
  get "welcome/usermatch" => "welcome#usermatch"
  resources :restaurants
  post "restaurants/show" => "restaurants#show"




  # get "restaurants/" => "restaurants#index"
  # post "restaurants/" => "restaurants#index"
  # post "/restaurants/create" => "restaurants#create"
  # get "/restaurants/new" => "restaurants#new"
  # post "welcome/restaurants/create" => "restaurants#create"

  resources :profiles
  devise_for :users, class_name: 'FormUser', :controllers => { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}
  devise_scope :user do
    get '/users/auth/:provider/upgrade' => 'omniauth_callbacks#upgrade', as: :user_omniauth_upgrade
    get '/users/auth/:provider/setup', :to => 'omniauth_callbacks#setup'
  end

  # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

  resources :profile
  resources :conversations do
  member do
    post :reply
    post :trash
    post :untrash
    end
  end
end
