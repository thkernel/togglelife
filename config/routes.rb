Rails.application.routes.draw do
  #resources :profiles
  # Default routes.

  get 'home' => 'profiles#index', as: :profile


  # For profiles resources.
  get "/me/:login" => "profiles#show_my_profile", as: :show_my_profile # After i would replace :login by slug
  get "/profile/:login" => "profiles#show_his_profile", as: :show_his_profile # After i would replace :login by slug

  devise_scope :user do
    root to: "users/sessions#new"
  end
  #devise_for :users

  devise_for :users, path: '', controllers: { 
            registrations: "users/registrations",
            confirmations: 'users/confirmations',
            passwords: "users/passwords",
            sessions: "users/sessions"
            
        }, 
        path_names: {
            sign_in: 'login', 
            sign_out: 'logout', 
            password: 'secret', 
            confirmation: 'verification', 
            unlock: 'unblock', 
            registration: 'signup', 
            sign_up: '' 
        }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
