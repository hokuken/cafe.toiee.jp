require "rack/jekyll"

if ENV['RACK_ENV'] == 'staging'
  use Rack::Auth::Basic do |username, password|
    username == ENV['BASIC_AUTH_USER_NAME'] && password == ENV['BASIC_AUTH_PASSWORD']
  end
end

run Rack::Jekyll.new
