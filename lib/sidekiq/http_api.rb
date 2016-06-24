require 'sidekiq/web'
require 'sidekiq/api'
require 'sidekiq/http_api/web'

module Sidekiq
  module HttpApi

  end
end

if defined?(Sidekiq::Web)
  Sidekiq::Web.register Sidekiq::HttpApi::Web
else
  fail 'No Sidekiq::Web found'
end

