Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets, only: [:index, :new, :destroy, :create, :delete, :edit, :update]
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/users/sign_up' => 'devise/registrations#new'
    get 'tweets/:id' => 'tweets#destroy'
    get 'tweets/:id/edit' => 'tweets#update'
  end
end

