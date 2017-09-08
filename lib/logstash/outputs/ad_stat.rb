require "ad_stat/version"
require "logstash/outputs/base"
require "logstash/namespace"

module LogStash::Outputs::AdStat < LogStash::Outputs::Base
  config_name "ad_stat"
  
  public
  def register
  end # def register
  
  public
  def receive(event)
	
  end # def receive
  
end
