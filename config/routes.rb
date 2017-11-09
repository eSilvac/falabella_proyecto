Rails.application.routes.draw do
  root "falabella_employees#index"

  resources :companies, except: [:show]
  resources :products, except: [:show]
  resources :floors, only: [:show, :index] do
    resources :departments, only: [:show, :create, :destroy] do
      resources :sections, only: [:show, :destroy]
    end
  end

  resources :falabella_employees
  resources :external_employees
end
