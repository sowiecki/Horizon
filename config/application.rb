require File.expand_path('../boot', __FILE__)

require "rails"
require 'rails/railtie'

%w(
  neo4j
  action_controller
  action_mailer
  sprockets
).each do |framework|
  begin
    require "#{framework}/railtie"
  rescue LoadError
  end
end

Bundler.require(*Rails.groups)

module Horizon
  class Application < Rails::Application
    config.generators do |g|
      g.orm :neo4j
    end

    config.assets.precompile = ['*.js', '*.css', '*.png']
    config.neo4j.session_type = :server_db
    config.neo4j.session_path = ENV['GRAPHENEDB_URL'] || 'http://localhost:7474'
  end
end

# module OmniAuth
#   module Strategies
#     class User < OmniAuth::Strategies::Facebook
#       def call
#         begin
#           super
#         raise OmniAuth::Unauthorized => e
#           return "Test"
#         end
#       end
#     end
#   end
# end

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider OmniAuth::Strategies::FacebookWithExceptionHandling,
#     api_key, ENV["CONSUMER_KEY"]
#     secret_key, ENV["CONSUMER_SECRET"]
# end
