require 'yaml'
require 'uri'

module Javcode

	module Environment

		module_function

		def env
		  CONFIG
		end

	end

end

private

# load default config
CONFIG = YAML.load_file('config/config.yml')

# overlay test environment config
test_env = ENV['TEST_ENV']
CONFIG.merge! YAML.load_file("config/environments/#{test_env}.yml") if test_env

# overlay environment variables
CONFIG.each_key { |k| CONFIG[k] = ENV[k] || CONFIG[k] }

# derive http proxy host and port from standard env var
http_proxy = ENV['http_proxy']
if http_proxy
  http_proxy_uri = URI(http_proxy)
  CONFIG['http_proxy_host'] = http_proxy_uri.host
  CONFIG['http_proxy_port'] = http_proxy_uri.port
end