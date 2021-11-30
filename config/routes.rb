Rails.application.routes.draw do

<<<<<<< HEAD
	resources :campers, only: [:index, :show, :create]
	resources :activities, only: [:index, :destroy]	
	resources :signups, only: [:create]

=======
	get 'campers', to: 'campers#index'
	get 'campers/:id', to: 'campers#show'
	get 'activities', to: 'activities#index'

	post 'campers', to: 'campers#create'

	delete 'activities/:id', to: 'activities#destroy'

	post 'signups', to: 'signups#create'
>>>>>>> ac472f1693d6f3dbca7c809a87d9de9ec7f0e715
end
