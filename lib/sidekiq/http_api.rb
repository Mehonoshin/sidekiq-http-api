require 'sidekiq/web'
require 'sidekiq/http_api/web'

if defined?(Sidekiq::Web)
  Sidekiq::Web.register Sidekiq::HttpApi::Web
else
  fail 'No Sidekiq::Web found'
end

