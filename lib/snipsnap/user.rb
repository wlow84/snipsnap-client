require 'faraday'
require 'json'

module Snipsnap
  class User
    def initialize(configuration)
      uri = [configuration.uri, "users"].join("/")
      @connection = ::Faraday.new(url: uri)
    end

    def lookup(user_id: nil, email_hash: nil)
      raise ArgumentError.new if user_id.nil? && email_hash.nil?

      response = @connection.get("lookup", id: user_id, hash: email_hash)
      OpenStruct.new(::JSON.parse(response.body))
    end
  end
end
