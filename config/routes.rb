Rails.application.routes.draw do
  resources :messages
  resources :conversations
  # Default routes.
  #root 'home#index'

  get 'home' => 'profiles#index', as: :profile


  # For profiles resources.
  get "/me/:slug" => "profiles#show_his_profile", as: :show_my_profile # After i would replace :login by slug
  get "/me/:slug/presentation" => "profiles#profile_presentation", as: :get_profile_presentation # After i would replace :login by slug
  #post "/me/:slug/presentation" => "profiles#update_profile_presentation", as: :post_profile_presentation # After i would replace :login by slug
  patch "/me/:slug/presentation" => "profiles#update_profile_presentation", as: :update_profile_presentation # After i would replace :login by slug
  get "/me/:slug/informations" => "profiles#profile_informations", as: :get_profile_informations # After i would replace :login by slug
  patch "/me/:slug/informations" => "profiles#update_profile_informations", as: :update_profile_informations # After i would replace :login by slug
  get "/me/:slug/thumbnail" => "profiles#profile_thumbnail", as: :get_profile_thumbnail # After i would replace :login by slug
  patch "/me/:slug/thumbnail" => "profiles#update_profile_thumbnail", as: :update_profile_thumbnail # After i would replace :login by slug

  #get "update/me/:slug" => "profiles#show_his_profile", as: :show_my_profile # After i would replace :login by slug

  get "/profile/:slug" => "profiles#show_his_profile", as: :show_his_profile # After i would replace :login by slug
 # get "update/profile/:slug" => "profiles#show_his_profile", as: :show_his_profile # After i would replace :login by slug

  get "message/new/:recipient_id/" => "messages#new", as: :send_new_message
  get "messages/:id/" => "messages#show", as: :show_messages
  post "message/create/:recipient_id/" => "messages#create", as: :create_message
  
  
  devise_scope :user do
    authenticated :user do
      root 'dashboard#index', as: :authenticated_root
    end

    unauthenticated do
      root 'users/registrations#new', as: :unauthenticated_root
    end
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


        %w( 404 422 500 ).each do |code|
          get code, :to => "errors#show", :code => code
        end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end