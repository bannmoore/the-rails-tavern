ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  def logger
    Rails.logger
  end

  # Add more helper methods to be used by all tests here...
  def visit_with_http_auth(path)
    username = 'bannmoore'
    password = 'secret'
    host = Capybara.current_session.server.host
    port = Capybara.current_session.server.port
    
    visit "http://#{username}:#{password}@#{host}:#{port}#{path}"
  end
end
