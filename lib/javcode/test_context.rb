require 'javcode/environment'
require 'javcode/api_client'

module Javcode

	class TestContext

		def initialize
			@api_client = Javcode::ApiClient.new
		end

		def api_client
			@api_client
		end

		def env
			Javcode::Environment.env
		end
	end

end