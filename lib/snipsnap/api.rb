require 'snipsnap/users'

module Snipsnap
  class Api
    def initialize(configuration)
      @configuration = configuration
    end

    def users
      Users.new(@configuration)
    end
  end
end