# encoding: utf-8
require "logstash/devutils/rspec/spec_helper"
require "logstash/outputs/ad_stat"

describe LogStash::Outputs::AdStat do
  let(:sample_event) { LogStash::Event.new(:test => 'test',
                                           :msg => 'message')}
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
