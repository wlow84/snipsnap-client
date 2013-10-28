module Snipsnap
  class Configuration
    attr_accessor :protocol, :host, :version

    def initialize
      @protocol = ENV['SNIPSNAP_PROTOCOL'] || "https"
      @host     = ENV['SNIPSNAP_HOST'] || "api.snipsnap.it"
      @version  = ENV['SNIPSNAP_VERSION'] || 2
    end

    def uri
      "#{protocol}://#{host}/v#{version}"
    end
  end
end