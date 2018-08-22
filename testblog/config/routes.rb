Rails.application.routes.draw do
  # get '/users/sign_out' => 'devise/sessions#destroy'
devise_for :users, path: 'users'
# eg. http://localhost:3000/users/sign_in
devise_for :admins, path: 'admins'
# eg. http://localhost:3000/admins/sign_in

  get 'welcome/index'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
   #devise_for :admins
   
 	resources :posts do
 	resources :admins
 	resources :users
	 end

	 resources :posts ,only: :index
 #devise_for :users 

 #resources :posts do
 	
 #end

end
