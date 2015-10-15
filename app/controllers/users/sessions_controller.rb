class Users::SessionsController < Devise::SessionsController
  def new
    super
  end

  def create
    self.resource = warden.authenticate!(auth_options)
    resource.connection_type = params[:connection_type]
    resource.save
    set_flash_message(:notice, :signed_in) if is_flashing_format?
    sign_in(resource_name, resource)
    yield resource if block_given?
    respond_with resource, location: after_sign_in_path_for(resource)
  end

  def destroy
    super
  end

  protected
  def after_sign_in_path_for(resource)
    chat_index_path
  end
end
