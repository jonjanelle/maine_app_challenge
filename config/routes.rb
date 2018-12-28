Rails.application.routes.draw do

  devise_for :users, defaults: { format: :json } #, controllers: { sessions: 'sessions_controller' }

  resources :events do 
    collection do 
      get :ping
      get :get_featured
    end
    member do 
    end
  end
  
  resources :resources do 
    collection do
      get :ping
      get :authorized_ping
      get :get_featured
    end
    member do 
      post :like
      post :dislike
    end
  end

  resources :users do
    collection do
      post :confirm
    end
    member do 
    end
  end

  resources :resource_descriptions, only: [:index, :show] do
    collection do
    end
    member do 
    end
  end

end
