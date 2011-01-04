# Load the rails application
require File.expand_path('../application', __FILE__)
Haml::Template.options[:ugly] = false

# Initialize the rails application
Deluxe::Application.initialize!
