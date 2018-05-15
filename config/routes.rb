Rails.application.routes.draw do
  # get 'pages/home'

  # get 'home/index'

	root 'pages#home'
	# root to: "application#hello"
	# get "/" => "application#hello"
	# get "/" => "pages#home"
	get "about" => "pages#about"
	get "contact" => "pages#contactus"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
