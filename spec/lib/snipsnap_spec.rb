require 'spec_helper'

describe Snipsnap do
  subject(:klass) { Snipsnap }

  its(:configure) { should be_a Snipsnap::Configuration }
end

describe Snipsnap, "#configure" do
  context "when not passed a block" do
    subject(:config) { Snipsnap.configure }

    its(:protocol) { should eq "https" }
    its(:host)     { should eq "api.snipsnap.it"}
    its(:version)  { should eq 2 }
    its(:uri)      { should eq "https://api.snipsnap.it/v2" }
  end

  context "when passed a block" do
    subject(:config) do
      Snipsnap.configure do |config|
        config.protocol = "http"
        config.host     = "test.api.snipsnap.it"
        config.version  = 1
      end
    end

    its(:protocol) { should eq "http" }
    its(:host)     { should eq "test.api.snipsnap.it" }
    its(:version)  { should eq 1 }
    its(:uri)      { should eq "http://test.api.snipsnap.it/v1" }
  end
end