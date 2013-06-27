# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Asana::Application.initialize!

  ENV['CLIENT_ID'] = '5880605285017'
  ENV['CLIENT_SECRET'] = 'e289a12c74d13c4650c3ec22e2cd28aa'
