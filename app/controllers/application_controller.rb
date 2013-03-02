class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate, :except => [:index, :show]

  def authenticate
    authenticate_or_request_with_http_basic do |u, p|
      u == Settings.admin.name && p == Settings.admin.password
    end
  end
end
