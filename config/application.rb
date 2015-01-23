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

    config.neo4j.session_type = :server_db
    config.neo4j.session_path = ENV['GRAPHENEDB_URL'] || 'http://localhost:7474'
  end
end
