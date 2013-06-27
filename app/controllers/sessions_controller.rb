class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
  	client = Client.from_omniauth(auth)
    session[:client_id] = client.id
    session[:c_token] = auth[:credentials]['token']
    redirect_to '/workspace/index'
	end

  def destroy
    session[:client_id] = nil
    redirect_to root_url
	end
end


#client.authenticate(auth)