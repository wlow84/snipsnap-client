require 'spec_helper'

describe "User account lookup", :acceptance do
  let(:config)     { Snipsnap::Configuration.new }
  let(:client)     { Snipsnap.connect(config).users }
  let(:email_hash) { "dc2c59b837aa4f99e77b57f74751fe72242d3c6e" }
  let(:user_id)    { 214907 }

  context "when given an email hash" do
    subject(:user) { client.lookup(email_hash: email_hash) }

    its(:user_id)    { should eq user_id }
    its(:email_hash) { should eq email_hash }
  end

  context "when given an ID" do
    subject(:user) { client.lookup(user_id: user_id) }

    its(:user_id)    { should eq user_id }
    its(:email_hash) { should eq email_hash }
  end
end