require "rack/test"
require_relative "../app/application"

ENV["RACK_ENV"] = "test"

RSpec.configure do |config|
  config.include Rack::Test::Methods

  def app
    Application
  end
end

