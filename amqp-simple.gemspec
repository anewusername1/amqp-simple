# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "amqp-simple/version"

Gem::Specification.new do |s|
  s.name        = "amqp-simple"
  s.version     = Ragnar::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tracey Eubanks"]
  s.email       = ["traceyeubanks@yahoo.com"]
  s.homepage    = "https://github.com/narshlob"
  s.summary     = %q{A simpler way to use AMQP utilizing the Ruby AMQP gem with RabbitMQ}
  s.description = %q{A simpler way to use AMQP utilizing the Ruby AMQP gem with RabbitMQ}

  s.rubyforge_project = "amqp-simple"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'amqp', '~>0.7.1'
  s.add_development_dependency 'rspec', '~>2.5.0'
  s.add_development_dependency 'evented-spec', '~>0.4.1'
end

