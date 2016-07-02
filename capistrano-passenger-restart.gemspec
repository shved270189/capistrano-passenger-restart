# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/passenger/restart/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-passenger-restart"
  spec.version       = Capistrano::Passenger::Restart::VERSION
  spec.authors       = ["Ivan Bondarenko"]
  spec.email         = ["bondarenko.dev@gmail.com"]

  spec.summary       = %q{Passenger restart integration for Capistrano.}
  spec.description   = %q{Passenger restart integration for Capistrano.}
  spec.homepage      = "https://github.com/shved270189/capistrano-passenger-restart"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = "exe"
  # spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '~> 3.0'
end
