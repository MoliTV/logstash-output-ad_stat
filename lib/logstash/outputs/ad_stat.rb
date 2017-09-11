# encoding: utf-8
require "logstash/outputs/ad_stat/version"
require "logstash/outputs/base"
require "logstash/namespace"

class LogStash::Outputs::AdStat < LogStash::Outputs::Base
  config_name "ad_stat"
  
  public
  def register
  end # def register
  
  public
  def receive(event)
	LogStash::Logging::Logger.new(self.class.name).error('++++++++++++++')
	$stdout.write(event)
	"Event received"
  end # def receive
end
