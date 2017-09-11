# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "logstash/outputs/ad_stat/version"

Gem::Specification.new do |spec|
  spec.name          = "ad_stat"
  spec.version       = AdStat::VERSION
  spec.authors       = ["iOSdeveloperFu"]
  spec.email         = ["wangcf@heng-zhun.com"]

  spec.summary       = %q{collect AD's pv and uv status to redis.}
  spec.description   = %q{collect AD's pv and uv status to redis.}
  spec.homepage      = "http://blank/."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
  # Special flag to let us know this is actually a logstash plugin
	spec.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Gem dependency
  spec.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  spec.add_runtime_dependency "logstash-codec-plain"
  
  spec.add_development_dependency 'logstash-devutils'
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
