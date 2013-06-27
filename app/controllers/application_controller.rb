class ApplicationController < ActionController::Base
 include ResourceHelper
  include SessionsHelper
  protect_from_forgery

  helper_method :current_client

private

  def current_user
    @current_client ||= client.find(session[:client_id]) if session[:client_id]

  end

end
