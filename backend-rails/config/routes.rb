Rails.application.routes.draw do
  devise_for :users

  
  root "dashboard#show"
  resource :dashboard, only: [:show]

  resources :predictions, only: [:new, :create] do 
    collection do
      get :report_heart
      get :about_us
    end
  end
end
