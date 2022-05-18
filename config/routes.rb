Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants, except: [:update, :edit, :destroy] do
    resources :reviews, except: [:index, :update, :edit, :destroy]
  end
end
