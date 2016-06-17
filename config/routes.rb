Rails.application.routes.draw do
  get 'landing_page/index'
get 'home', to: 'landing_page#index'
  devise_for :users,:controllers => { :registrations => "users" }, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end
