Rails.application.routes.draw do

	get 'campers', to: 'campers#index'
	get 'campers/:id', to: 'campers#show'
	get 'activities', to: 'activities#index'

	post 'campers', to: 'campers#create'

	delete 'activities/:id', to: 'activities#destroy'

	post 'signups', to: 'signups#create'
end
