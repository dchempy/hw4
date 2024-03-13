# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server

production:
  <<: *default
  adapter: postgresql
  database: hw4_production
  username: hw4
  password: <%= ENV["HW4_PASSWORD"] %>
