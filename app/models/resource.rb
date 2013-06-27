class Resource < ActiveResource::Base
    
    class<<self
      attr_accessor :token
    end

    headers['Authorization'] = "Bearer #{@token}"
    self.site = 'https://app.asana.com/api/1.0/'
    
end
