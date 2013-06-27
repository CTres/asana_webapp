class Client < ActiveRecord::Base
	attr_accessible :name, :provider, :uid
 
  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end
      
  def self.create_from_omniauth(auth)
    create! do |client|
      client.provider = auth["provider"]
      client.uid = auth["uid"]
      client.name = auth["info"]["name"]
      client.token = auth["credentials"]["token"]
    end
  end

  def 
end





#take token, connect it to 

# @bearer = auth.credentials.token
#headers['Bearer'] = @bearer
#  self.site = 'https://app.asana.com/api/1.0/'