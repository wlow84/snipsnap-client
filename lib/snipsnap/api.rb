require 'snipsnap/user'

module Snipsnap
  class Api
    def initialize(configuration)
      @configuration = configuration
    end

    def users
      User.new(@configuration)
    end
  end
end