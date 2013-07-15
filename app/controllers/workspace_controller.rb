require 'asana'
class WorkspaceController < ApplicationController
  def index
  	@token = session[:c_token]
  	Asana::Client.authenticate(session[:c_token])
  	@user = Asana::User.me
  end
end
