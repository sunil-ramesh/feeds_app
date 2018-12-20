Rails.application.routes.draw do
	root to: 'pages#index'
	resources :items, only: [:new, :create]
	resources :pins, only: [:create, :destroy]
	resources :users, only: [:index]
	resources :follows, only: [:create, :destroy]
    devise_for :users
  scope path: '/feeds', controller: :feeds, as: 'feed' do
	  # get 'user/:id', to: :user, as: :user
	  get 'me', to: :user
	  get 'flat', to: :flat
	  get 'aggregated', to: :aggregated
	  get 'notification', to: :notification
end
end
