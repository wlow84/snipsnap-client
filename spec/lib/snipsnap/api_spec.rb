require 'spec_helper'

describe Snipsnap::Api, "#users" do
  let(:config) { Snipsnap::Configuration.new }
  let(:api) { Snipsnap::Api.new(config) }
  subject(:users) { api.users }

  it { should be_a Snipsnap::Users }
end