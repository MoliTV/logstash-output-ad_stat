# encoding: utf-8
require "logstash/event"
require "logstash/outputs/ad_stat"
require "logstash/devutils/rspec/spec_helper"


describe LogStash::Outputs::AdStat do
  let(:sample_event) { LogStash::Event.new }
  let(:output) { LogStash::Outputs::AdStat.new }

  before do
    output.register
  end

  describe "receive message" do
    subject { output.receive(sample_event) }

    it "returns a string" do
      expect(subject).to eq("Event received")
    end
  end
end
