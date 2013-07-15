module ResourceHelper

  def get_user()
		Asana::Client.authenticate(session[:c_token])
	end
end
