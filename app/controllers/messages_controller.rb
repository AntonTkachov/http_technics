class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
  end

  protected
  def message_params
  end
end
