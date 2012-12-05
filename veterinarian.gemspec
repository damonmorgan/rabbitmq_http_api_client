# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'veterinarian/version'

Gem::Specification.new do |gem|
  gem.name          = "veterinarian"
  gem.version       = Veterinarian::VERSION
  gem.authors       = ["Michael Klishin"]
  gem.email         = ["michael@defprotocol.org"]
  gem.description   = %q{RabbitMQ HTTP API client for Ruby}
  gem.summary       = %q{RabbitMQ HTTP API client for Ruby}
  gem.homepage      = "http://github.com/ruby-amqp/veterinarian"
  gem.licenses      = ["MIT", "Mozilla Public License"]

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency    "hashie",             "~> 1.2.0"
  gem.add_dependency    "multi_json",         "~> 1.4.0"
  gem.add_dependency    "faraday",            "~> 0.8.4"
  gem.add_dependency    "faraday_middleware", "~> 0.9.0"
  gem.add_dependency    "effin_utf8",         "~> 1.0.0"
end