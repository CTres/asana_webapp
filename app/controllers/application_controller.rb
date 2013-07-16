class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_client
  include ApplicationHelper

private
  def current_user
    @current_client ||= client.find(session[:client_id]) if session[:client_id]
  end

end
