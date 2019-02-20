Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    # collection do
    # end
    # member do
    # end
    resources :reviews, only: %i[new create]
  end
  resources :reviews, only: %i[show edit update destroy]
end
