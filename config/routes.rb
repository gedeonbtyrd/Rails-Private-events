Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
 
  resources :events do
    post 'create_invite', to: 'invites#create'
    delete 'destroy_invite', to: 'invites#destroy'
  end

 
  post 'create_attending', to: 'attendings#create'
  delete 'destroy_attending', to: 'attendings#destroy'


  get 'my_events', to: 'users#show'


  root "events#index"
end