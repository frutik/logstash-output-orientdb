require_relative '../spec_helper'
require "logstash/plugin"
require "logstash/json"

describe LogStash::Outputs::OrientDB do

  let(:config) do
    { "username" => "logstash", "password" => "logstash" }
  end

  describe "registration" do

    let(:output) { LogStash::Plugin.lookup("output", "orientdb").new(config) }

    it "should register" do
      expect { output.register }.to_not raise_error
    end

    it "should teardown" do
      output.register
      expect { output.teardown }.to_not raise_error
    end
  end

end
