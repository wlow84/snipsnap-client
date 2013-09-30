require 'snipsnap'

RSpec.configure do |c|
  c.before(:each, acceptance: true) do
    Snipsnap.configure
  end
end