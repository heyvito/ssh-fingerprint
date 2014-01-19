# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ssh_fingerprint/version'

Gem::Specification.new do |spec|
  spec.name           = 'ssh-fingerprint'
  spec.version        = SSHFingerprint.VERSION
  spec.authors        = ['Victor Gama']
  spec.email          = ['hey@vito.io']
  spec.description    = %q{Generate a fingerprint given an SSH public key (without `ssh-keygen` or external dependencies)}
  spec.summary        = %q{SSH fingerprint generator}
  spec.homepage       = 'http://github.com/victorgama/ssh-fingerprint'
  spec.license        = 'MIT'
  
  spec.files          = `git ls-files`.split($/)
  spec.executables    = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files     = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths  = ["lib"]
  
  spec.add_development_dependency 'bundler',  '~> 1.5'
  spec.add_development_dependency 'rake',     '~> 10.1'
  spec.add_development_dependency 'rspec',    '~> 2.14'
end