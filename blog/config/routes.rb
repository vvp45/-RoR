Rails.application.routes.draw do
  # ActiveAdmin.routes(self)
   resources :blogfiles, only: [:index, :new, :create, :destroy]   
  # root "blogfiles#index"  
  # get 'blogfile/index'

  # get 'blogfile/new'

  # get 'blogfile/create'

  # get 'blogfile/destroy'

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