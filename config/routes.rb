Rails.application.routes.draw do
  devise_scope :user do
    scope :users do
      get 'sign_in', controller: 'users/sessions', action: 'new', as: 'new_user_session'
      post '/', controller: 'users/registrations', action: 'create', as: 'user_registration'
      post 'sign_in', controller: 'users/sessions', action: 'create', as: 'user_session'
      delete 'sign_out', controller: 'users/sessions', action: 'destroy', as: 'destroy_user_session'
    end
    root to: 'users/sessions#new'
  end
end
