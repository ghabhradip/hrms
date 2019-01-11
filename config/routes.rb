Rails.application.routes.draw do

  
  resources :home do
    collection do
      get :dashboard, as: "dashboard"
    end
  end

  resources :employees

  devise_for :users, :controllers => { registrations: 'registrations', sessions: 'sessions'}

  devise_scope :user do
    authenticated :user do
      root 'home#dashboard', as: :authenticated_root
    end

    unauthenticated do
      root 'home#index', as: :unauthenticated_root
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
