Rails.application.config.middleware.use OmniAuth::Builder do
  provider :asana, ENV['CLIENT_ID'],ENV['CLIENT_SECRET']
end

