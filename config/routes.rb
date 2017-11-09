Rails.application.routes.draw do
  
  get 'external_employees/index'

  get 'external_employees/show'

  get 'external_employees/new'

  get 'external_employees/create'

  get 'external_employees/edit'

  get 'external_employees/update'

  get 'external_employees/destroy'

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
