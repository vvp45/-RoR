Rails.application.routes.draw do
    devise_for :admins
    devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
 
  resources :articles
 
  root 'welcome#index' #root path.
  	resources :articles do
  	resources :admins
  	resources :users
  	#resources :comments
	end
end
