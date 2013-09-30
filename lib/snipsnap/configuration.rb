module Snipsnap
  class Configuration
    attr_accessor :protocol, :host, :version

    def initialize
      @protocol = "https"
      @host     = "api.snipsnap.it"
      @version  = 2
    end

    def uri
      "#{protocol}://#{host}/v#{version}"
    end
  end
end