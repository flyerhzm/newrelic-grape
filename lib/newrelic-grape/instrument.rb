module NewRelic
  module Agent
    module Instrumentation
      class Grape < ::Grape::Middleware::Base
        include ControllerInstrumentation

        def call!(env)
          @env = env

          @newrelic_request = ::Rack::Request.new(env)
          trace_options = {
            :category => :rack,
            :path => "#{request_method} #{request_path}",
            :request => @newrelic_request
          }
          perform_action_with_newrelic_trace(trace_options) do
            @app_response = @app.call(@env)
          end
        end

        def request_path
          env['api.endpoint'].routes.first.route_path[1..-1].gsub("/", "-").sub(/\(\.:format\)\z/, "")
        end

        def request_method
          @newrelic_request.request_method
        end
      end
    end
  end
end

DependencyDetection.defer do 
  @name = :grape

  depends_on do
    defined?(::Grape) and not ::NewRelic::Control.instance['disable_grape']
  end

  executes do
    NewRelic::Agent.logger.debug 'Installing Grape instrumentation'
  end

  executes do
    ::Grape::Endpoint.class_eval do
      alias_method :origin_build_middleware, :build_middleware

      def build_middleware
        builder = origin_build_middleware
        builder.use ::NewRelic::Agent::Instrumentation::Grape
        builder
      end
    end
  end
end
