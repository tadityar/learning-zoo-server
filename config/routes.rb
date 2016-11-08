Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root "home#index"

  resources :topics do
    get :incr_counter, on: :member
  end
end
