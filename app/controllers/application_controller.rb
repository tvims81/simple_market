class ApplicationController < ActionController::Base
  class ResourceNotFoundError < RuntimeError; end

  rescue_from ResourceNotFoundError, with: :render_not_found_error
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  def render_ue_error(model)
    render json: model.errors, status: :unprocessable_entity
  end

  def render_not_found_error
    render nothing: true, status: :not_found
  end

end
