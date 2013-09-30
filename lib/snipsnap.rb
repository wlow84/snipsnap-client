require 'snipsnap/configuration'

module Snipsnap
  class << self
    attr_accessor :configuration

    def configure
      (self.configuration || Configuration.new).tap do |config|
        yield config if block_given?
      end
    end
  end
end
