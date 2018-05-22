Rails.application.routes.draw do
  devise_for :users
  # get 'pages/home'

  # get 'home/index'

	root 'pages#home'
	# root to: "application#hello"
	# get "/" => "application#hello"
	get "/" => "pages#home"
	get "about" => "pages#about"
	get "contact" => "pages#contactus"
	get "senator" => "propublica#senator"
	get "house" => "propublica#house"
	get "getSenator" => "propublica#getSenator"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
