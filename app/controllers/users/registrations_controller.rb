class Users::RegistrationsController < Devise::RegistrationsController
  #FIXME I think I will need to uncomment this
  #before_filter :configure_sign_up_params, only: [:create]

  def new
    super
  end

  def create
    super
  end

  protected

  #def configure_sign_up_params
  #  devise_parameter_sanitizer.for(:sign_up) << :login
  #end
end
