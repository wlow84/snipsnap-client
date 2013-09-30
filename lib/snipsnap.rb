require 'snipsnap/api'
require 'snipsnap/configuration'

module Snipsnap
  class << self
    attr_accessor :configuration

    def configure
      (self.configuration ||= Configuration.new).tap do |config|
        yield config if block_given?
      end
    end

    def connect(configuration = Snipsnap.configuration)
      Api.new(configuration)
    end
  end
end
