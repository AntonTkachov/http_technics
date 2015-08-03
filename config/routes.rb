Rails.application.routes.draw do
  scope :users do
    get    'sign_up', controller: 'users/registrations', action: 'new', as: 'new_user_registration'
    post   '/', controller: 'users/registrations', action: 'create', as: 'user_registration'
    get    'sign_in', controller: 'users/sessions', action: 'new', as: 'new_user_session'
    post   'sign_in', controller: 'users/sessions', action: 'create', as: 'user_session'
    delete 'sign_out', controller: 'users/sessions', action: 'destroy', as: 'destroy_user_session'
  end
  root to: 'home#index'
end
