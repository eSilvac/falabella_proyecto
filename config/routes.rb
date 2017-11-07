Rails.application.routes.draw do
  resources :companies, except: [:show]
  resources :products, except: [:show]
  resources :floors, only: [:show, :index] do
    resources :departments, only: [:show, :create, :destroy] do
      resources :sections, only: [:show, :destroy]
    end
  end
end
