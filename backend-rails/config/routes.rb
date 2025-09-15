Rails.application.routes.draw do
  devise_for :users
   root "predictions#about_us"
  resources :predictions, only: [:new, :create] do 
      collection do
      get :report_heart
      end
  end
end
