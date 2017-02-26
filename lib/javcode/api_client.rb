require 'javcode/http_client'

module Javcode

	class ApiClient

		def initialize
			@http_client = HttpClient.new
		end

		def get_posts
			api.get("/posts")
		end

		def get_post(id)
			api.get("/posts/#{id}")
		end

		private

		def api
			@http_client.conn
		end
	end

end