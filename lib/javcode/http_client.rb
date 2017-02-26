require 'javcode/environment'
require 'faraday'
require 'faraday_middleware'

module Javcode

	class HttpClient

		def conn
			connection = Faraday.new Javcode::Environment.env['API_BASE_URL'] do |conn|
				conn.request :json

				conn.response :json, :content_type => /\bjson$/

				conn.use :instrumentation
				conn.adapter Faraday.default_adapter
			end
		end

	end

end