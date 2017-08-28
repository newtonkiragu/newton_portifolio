class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    '/articles'
  end

  def after_sign_out_path_for(_resource_or_scope)
    URI.parse(request.referer).path if request.referer
  end
end
