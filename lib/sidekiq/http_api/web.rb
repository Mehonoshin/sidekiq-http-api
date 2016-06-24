require 'sidekiq/api'
require 'json'

module Sidekiq
  module HttpApi
    module Web
      def self.registered(app)

        app.get '/api/stats' do
          content_type :json

          stats = Sidekiq::Stats.new
          keys = %w( processed failed scheduled_size retry_size dead_size enqueued processes_size
                     workers_size default_queue_latency )

          keys.reduce({}) do |result, key_name|
            result.merge(key_name => stats.send(key_name))
          end.to_json
        end

        app.get '/api/queue/all' do
          content_type :json

          Sidekiq::Queue.all.reduce({}) do |result, queue|
            result.merge!(queue.name => { size: queue.size })
          end.to_json
        end


      end
    end
  end
end
