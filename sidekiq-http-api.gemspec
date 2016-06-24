# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/http_api/version'

Gem::Specification.new do |gem|
  gem.name          = 'sidekiq-http-api'
  gem.version       = Sidekiq::HttpApi::VERSION
  gem.authors       = ['Stanislav Mekhonoshib']
  gem.email         = ['ejabberd@gmail.com']

  gem.summary       = %q{}
  gem.description   = %q{}
  gem.homepage      = ""
  gem.license       = 'MIT'

  gem.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|images)/}) }
  gem.executables   = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency 'sidekiq', '>= 3.3.4', '< 5'

  gem.add_development_dependency 'rake', '~> 0'
  gem.add_development_dependency 'sinatra', '~> 1.4.6'
  gem.add_development_dependency 'mocha', '~> 0'
  gem.add_development_dependency 'rack-test', '~> 0'
  gem.add_development_dependency 'minitest', '~> 5.0', '>= 5.0.7'
  gem.add_development_dependency 'minitest-utils', '~> 0'
end
