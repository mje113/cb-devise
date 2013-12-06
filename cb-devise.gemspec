# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cb-devise/version'

Gem::Specification.new do |spec|
  spec.name          = 'cb-devise'
  spec.version       = CbDevise::VERSION
  spec.authors       = ['Mike Evans']
  spec.email         = ['mike@urlgonomics.com']
  spec.description   = %q{Devise ORM mapper for Couchbase Model}
  spec.summary       = %q{Devise ORM mapper for Couchbase Model}
  spec.homepage      = ''
  spec.license       = 'Apache'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activemodel', '>= 4.0.1'
  if defined?(JRUBY_VERSION)
    spec.add_dependency 'couchbase-jruby-model', '>= 0.1.0'
  else
    spec.add_dependency 'couchbase-model', '>= 0.5.3'
  end
  spec.add_dependency 'cb-orm-adapter', git: 'https://github.com/mje113/cb-orm-adapter'
  spec.add_dependency 'devise', '>= 3.2.1'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
