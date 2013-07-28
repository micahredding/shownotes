Shownotes::Application.routes.draw do
  get "home/index"

  resources :items


  resources :lists


  root :to => 'home#index'

  # authentication routes
  match '/login',                 :to => 'user_session#new',                      :as => :login,           :via => :get
  match '/login',                 :to => 'user_session#create',                   :as => :login,           :via => :post
  match '/logout',                :to => 'user_session#destroy',                  :as => :logout,          :via => :delete
  match '/forgot_password',       :to => 'user_session#forgot_password',          :as => :forgot_password, :via => :get
  match '/forgot_password',       :to => 'user_session#send_reset_password_link', :as => :forgot_password, :via => :post
  match '/reset_password/:token', :to => 'user_session#acquire_password',         :as => :reset_password,  :via => :get
  match '/reset_password/:token', :to => 'user_session#reset_password',           :as => :reset_password,  :via => :post
  match '/register',              :to => 'users#new',                             :as => :register,        :via => :get
  match '/register',              :to => 'users#create',                          :as => :register,        :via => :post

  # custom error routes
  match '/404' => 'errors#not_found'
  match '/422' => 'errors#unprocessable_entity'
  match '/500' => 'errors#application_error'
end
